function [a,u] = LInf_Norm_OCA(cb,ad,umin,umax,wc,upref)
% LInf_Norm_OCA Control allocation algorithm to perform a mixed normalized
% optimization of the L-Inf norm of the error and of the deviation from a 
% preferred value. 
%
% Input:
%   cb[n,m]:    Control effectiveness matrix- translates from control
%               surface deflections (aileron, flaps, ...) to the unit of
%               the desired vector (often rates)
%   ad[n,1]:    The desired vector (often rates)
%   umin[m,1]:  Minimum control deflection umin<=u<=umax.
%   umax[m,1]:  Maximum control deflection umin<=u<=umax.
%   wc:         Weight for the control deviations- an adjustable
%                   weighting factor
%   upref[m,1]: Preferred control position.
%
% Output: (a=cb.u)
%   a[m,1]:     Desired vector (often rates)
%   u[n,1]:     Control Surface deflections
%
% Use:
%
% Version History
%   Prepared by Marc Bodson. 
%   May 16, 2009 Original version (Marc Bodson)
%   Mar 16, 2016 Clean up/Comment (Chris Teubert)
%
% Notes
% Control allocation algorithm to perform a mixed optimization 
% of the l_1 norm of the error and of the normalized l_infty 
% deviation from a preferred value (the normalization is
% with respect to the maximum deflection). 
%
%
% The optimization criterion is:
%   J=||cb.u-ad||+wc||u-upref||, subject to umin<=u<=umax.
% The vector norm is the l1 norm for cb.u and normalized inf 
% for u, wc is an adjustable weighting factor, and 
% upref is the preferred control position.
% Inputs: cb[n,m],ad[n,1],umin[m,1],umax[m,1],upref[m,1]
% Outputs: u[m,1],a[n,1] (a=cb.u)
% The program uses the simplex algorithm, 
% with direct initialization.

wcl1=0;  % weight for the l1 norm of control deviations
[n,m] = size(cb); %  m = number of controls

%% Setup
% Prepare the problem by splitting the control ranges
% into positive and negative ranges
lpos=zeros(m,1);
lneg=zeros(m,1);
ubase=upref;
npos=0;
axp=zeros(n,m);
hxp=zeros(m,1);
nneg=0;
axn=zeros(n,m);
hxn=zeros(m,1);
for i=1:m
   if umax(i)>upref(i)
      npos=npos+1;
      lpos(npos)=i;
      axp(:,npos)=cb(:,i);
      hxp(npos)=umax(i)-upref(i);
      if umin(i)>upref(i)
         ubase(i)=umin(i);
         hxp(npos)=umax(i)-umin(i);
      end
   end
   if umin(i)<upref(i)
      nneg=nneg+1;
      lneg(nneg)=i;
      axn(:,nneg)=-cb(:,i);
      hxn(nneg)=-umin(i)+upref(i);
      if umax(i)<upref(i)
         ubase(i)=umax(i);
         hxn(nneg)=umax(i)-umin(i);
      end
   end
end
npn=npos+nneg; % npn = total number of optimization variables

%% Optimization Preparation
nx=npn+n+n; % number of variables including the (2n) slack variables
id=1:npn+n;
ib=npn+n+1:nx;
ax=[axp(:,1:npos) axn(:,1:nneg)];
bx=ad-cb*ubase;
for i=1:n
    if bx(i)<0
        ax(i,:)=-ax(i,:);
        bx(i)=-bx(i);
    end
end
ax=[ax -eye(n) eye(n)];
aer=sum(bx);
hx=[hxp(1:npos);
    hxn(1:nneg);
    aer*ones(n,1);
    aer*ones(n,1)];

% Add-on for normalized l_inf for u instead of l_1
ax=[ax zeros(n,npn+1);
    diag([1./hxp(1:npos);1./hxn(1:nneg)]) zeros(npn, 2*n) eye(npn) -ones(npn,1)];
bx=[bx;
    zeros(npn,1)];
cx=[wcl1*ones(npn,1);
    ones(n,1);
    ones(n,1);
    zeros(npn,1);wc];

%hx=[hx;2*ones(npn+1,1)]; % susan this line added
hmax=max(max(hxp),max(hxn));
hx=[hx;
    hmax*ones(npn+1,1)];
ib=[ib npn+2*n+1:npn+2*n+npn];
id=[id 2*n+2*npn+1];
ipn=ones(2*n+2*npn+1,1);

selfinit=2;

%% Optimization
x=simplexmat(ax,bx,cx,hx,id,ib,ipn,selfinit);

%% Post Processing
u=ubase;
for i=1:npos
    u(lpos(i))=u(lpos(i))+x(i);
end
for i=1:nneg
    u(lneg(i))=u(lneg(i))-x(i+npos);
end
a=cb*u;

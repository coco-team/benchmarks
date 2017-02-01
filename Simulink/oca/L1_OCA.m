function [a, u]=L1_OCA(cb,ad,umin,umax,wc,upref)
% L1_OCA Control allocation algorithm to perform a mixed optimization 
% of the L1 norm of the error and of the deviation from a preferred 
% value. 
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
%
% Version History
%   Prepared by Marc Bodson.
%   May 25, 2000 Original version (Marc Bodson)
%   Feb 23, 2016 Clean up/Comment (Chris Teubert)
% 
% Notes:
%   The optimization criterion is:
%       J=||cb*u-ad||+wc||u-upref||, subject to umin<=u<=umax.
%   The vector norm is the l1 norm

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
nx=npn+n+n;
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
cx=[wc*ones(npn,1);
    ones(n,1);
    ones(n,1)];
ipn=ones(nx,1);
aer=sum(bx);
hx=[hxp(1:npos);
    hxn(1:nneg);
    aer*ones(n,1);
    aer*ones(n,1)];
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

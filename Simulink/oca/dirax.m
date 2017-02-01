function [a, u] = dirax(cb,ad,umin,umax)
%
% Control allocation algorithm to perform direct allocation 
% (based on W. Durham's approach).
% Prepared by Marc Bodson. Last revised: May 25, 2000.
% The objective is to maximize rho with cb.u=rho.ad
% and umin<=u<=umax. If rho>1, u is scaled back so that 
% u=u/rho and a=cb.u=ad.
% Inputs: cb[n,m],ad[n,1],umin[m,1],umax[m,1]
% Outputs: u[m,1],a[n,1] (a=cb.u)
% The program uses the simplex algorithm.
%
% Preliminary checks
    if or(max(umin)>0,min(umax)<0)
       error('u=0 must belong to the control set for direct allocation');
    end;
    % Optimization
    [adm,k]=max(abs(ad));
    epsx=10.*eps; % eps is Matlab's floating point accuracy   
    if (adm>epsx)  
       n=size(cb,1);
       em=zeros(n-1,n);
       for i=1:k-1
           em(i,i)=-ad(k);
           em(i,k)=ad(i);
       end
       for i=k:n-1
           em(i,i+1)=-ad(k);
           em(i,k)=ad(i+1);
       end
       ax=em*cb;
       bx=-ax*umin;
       cx=-cb'*ad;
       hx=umax-umin;
       selfinit=1;
       x = simplexmat(ax,bx,cx,hx,id,ib,ipn,selfinit);
       u=x+umin;
       a=cb*u;
       rho=a'*ad/(ad'*ad);
       if rho>1
           u=u/rho;
           a=cb*u;
       end
    else
       u=0;
       a=0;
    end
end



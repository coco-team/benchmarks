function [a, u]=euminx(cb,ad,umin,umax,wc,upref)
% euminx Control allocation algorithm to perform a mixed optimization 
% of the norm of the error and of the deviation from a preferred 
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
%   Prepared by Marc Bodson. Last revised: .
%   May 25, 2000 Original version (Marc Bodson)
%   Feb 23, 2016 Clean up/Comment (Chris Teubert)
% 
% Notes:
%   The optimization criterion is:
%       J=||cb*u-ad||+wc||u-upref||, subject to umin<=u<=umax.
%   The vector norm is the l1 norm
%
%   The program uses the simplex algorithm, with direct initialization.

    [n,m] = size(cb); %  m = number of controls

    %% Input Validation
    % TODO(CT)
    
    %% Initialization
    u = upref;
    axp = zeros(n,m);
    hxp = zeros(m,1);
    axn = zeros(n,m);
    hxn = zeros(m,1);

    %% Setup
    % Prepare the problem by splitting the control ranges
    % into positive and negative ranges
    lPos = umax>upref; % Positive control ranges
    nPos = sum(lPos); 
    assert(nPos<100); % Bounding for autogen
    lPosFlat = 1:nPos; 
    axp(:,lPosFlat) = cb(:,lPos);
    hxp(lPosFlat) = umax(lPos) - upref(lPos);
    u(lPos(umin > upref)) = umin(lPos(umin > upref));
    if ~isempty(lPosFlat)
        hxp(lPosFlat(umin > upref)) = umax(lPos(umin > upref)) - umin(lPos(umin > upref));
    end

    lNeg = umin<upref;
    nNeg = sum(lNeg);
    assert(nNeg<100); % Bounding for autogen
    lNegFlat = 1:nNeg;
    axn(:,lNegFlat) = -cb(:,lNeg);
    hxn(lNegFlat) = -umin(lNeg) + upref(lNeg);
    u(lNeg(umax < upref)) = umax(lNeg(umax < upref));
    if ~isempty(lNegFlat)
        hxn(lNegFlat(umax < upref)) = umax(lNeg(umax < upref)) - umin(lNeg(umax < upref));
    end
        
    nOptVars = nPos+nNeg; % npn = total number of optimization variables

    nOptSlack = nOptVars+n+n; % Size with Slack variables
        % Slack variables are used to convert an inequality (x < c) to an
        % equality (x + s = c, where s are the slack variables)

    ax = [axp(:,1:nPos) axn(:,1:nNeg)];
    bx = ad-cb*u;

    % B must be positive, otherwise reverse signs of both A & B
    % Used to convert into standard form
    ax(bx<0,:) = -ax(bx<0,:);
    bx(bx<0) = -bx(bx<0);

    %% Prepare Optimizaiton input
    assert(n < 100); % Bounding for autogen
    ax=[ax -eye(n) eye(n)]; %% Ax with slack variables
    cx = [wc * ones(nOptVars,1);
          ones(2*n,1)]; % Minimixation constants column vector. The algorithm 
                      %minimizes cx'*x.  same size as x (nOptSlack)
    aer = sum(bx);
    hx = [hxp(1:nPos);
          hxn(1:nNeg);
          aer*ones(n,1);
          aer*ones(n,1)]; % Upper bound on x values (0<=x<=hx)
    id = 1:nOptVars+n; % an n-m vector containing the indices of 
                       % the elements of the vector x which are set at  
                       % their limits (non-basic variables).
    ib = nOptVars+n+1:nOptSlack; % an m vector containing the indices of the 
                          % other elements of the vector x (basic variables).
    ipn = ones(nOptSlack,1); % an nx vector indicating whether the 
                      % elements of x are at their lower or upper limits (+1 means 
                      % lower limit and -1 upper). 
    selfinit = 2;
    
    %% Optimization - Using simplex method
    x = simplexmat(ax,bx,cx,hx,id,ib,ipn,selfinit);

    %% Post-Processing
    u(lPos) = u(lPos) + x(lPosFlat);
    u(lNeg) = u(lNeg) + x(nPos+1:nPos+nNeg);
    a = cb * u;
end
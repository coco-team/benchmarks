function x=simplexmat(ax, bx, cx, hx, id, ib, ipn, selfinit)
% simplexmax Simplex algorithm for finding the optimal solution to a linear
% minimization problem
%
% The algorithm minimizes J=cx'*x subject to 0<=x<=hx and ax*x=bx.
%
% Inputs
%   ax:       Constraint matrix of size length(x) x #constraints, such that
%             ax*x=bx
%   bx:       Constraint column vector of size #constraints, such that
%             ax*x=bx
%   cx:       Minimixation constants column vector. The algorithm minimizes
%             cx'*x.  same size as x
%   hx:       Upper bound on x values (0<=x<=hx)
%   id:       (for selfinit=2 only) an nx-mx vector containing the indices 
%             of the elements of the vector x which are set at their limits 
%             (non-basic variables).
%   ib:       (for selfinit=2 only) an mx vector containing the indices of 
%             the other elements of the vector x (basic variables).
%   ipn:      (for selfinit=2 only) an nx vector indicating whether the 
%             elements of x are at their lower or upper limits (+1 means 
%             lower limit and -1 upper). 
%   selfinit: (optional) switch for wether the user will initialize the 
%             simplex
%             1: the program performs the initialization phase
%             2: the user provides initialization information (id, ib, ipn)
%
% Outputs
%   x: The optimal x value set that minimizes cx'*x such that the
%       constraints and bounds are met
%
% Use
%       x = simplexmat(ax, bx,  cx, hx, id, ib, ipn, 2)
%   or
%       x = simplexmat(ax, bx,  cx, hx, id, ib, ipn)
%
% Version History
%   Prepared by Marc Bodson. Last revised: February 19, 2016.
%   Modified 12/08/2009 SAF
%   Modified 02/19/2016 Christopher Teubert (christopher.a.teubert@nasa.gov)
%
% Notes
%   This version does not use the recursive update of the base matrix
%   and avoids the accumulation of numerical errors, possibly at the
%   cost of greater computations. 
%   Also in this version:
%    * if selfinit=1, it is not necessary to have ax(:,ib)=eye(mx)
%      and bx>0.
%    * the computation of jopt1 is fixed.
%   Previous update: added check for linear independence of base vectors
%
% Notes for selfinit=2 only:
% The user must provide a basic feasible solution, that is, a solution
% with nx-mx elements of x set at their limits (non-basic variables).
% The information to be provided is:
%   id: an nx-mx vector containing the indices of the elements
%       of the vector x which are set at their limits (non-basic
%       variables).
%   ib:  an mx vector containing the indices of the other elements 
%        of the vector x (basic variables).
%   ipn: an nx vector indicating whether the elements of x are at their 
%        lower or upper limits (+1 means lower limit and -1 upper). 
% If ipn(i)=-1, ax(:,i) must be replaced by -ax(:,i), cx(i) by -cx(i) 
% and bx by bx-ax(:,i)*hx(i) (for consistency with previous version). 

% todo(CT): Make the id, ib, ipn last variables optional

    %% Handle Input
    
    % Handle optional Parameters
    if (nargin < 8)
        selfinit = 1;
    end
    
    % Input validation
    assert(selfinit < 3 && selfinit > 0);
    
    %% Initialization
    epsx = 1000.*eps; % eps is Matlab's floating point accuracy
    epsxd = 10^6.*eps;
    
    [nConstraints, xLength] = size(ax);
    xb = zeros(nConstraints, 1);
    binv = zeros(nConstraints);
    ids = -999;
    dbd = xb;
    if (selfinit == 2)
        % Direct Phase 2 Initialization
        nd = xLength - nConstraints;
        axs = ax;
        bxs = bx;
        cxs = cx;
        for inx=1:xLength
            if ipn(inx) < 0
                axs(:, inx) = -ax(:, inx);
                bxs(:) = bxs(:) + ax(:, inx) * hx(inx);
                cxs(inx) = -cxs(inx);
            end
            binv = inv(ax(:, ib));
            xb = binv * bx;
        end
    else
        % Phase 1 Initialization
        % Initialization for phase 1 (find a basic feasible solution).
        % Introduce slack variables to satisfy the system of equations
        % and use the simplex algorithm to eliminate these variables.
        nd = xLength;
        id = (1:xLength)';
        ib = (xLength+1:xLength+nConstraints)';
        ipn = ones(xLength+nConstraints, 1);
        cxs = cx;
        cx = [zeros(xLength, 1);
            ones(nConstraints, 1)];

        % Convert to standard form: For every ax=b a must be positive,
        % if a is negative switch the sign for both a and b
        negA = ax(:) < 0;
        bx(negA) = -bx(negA); 
        ax(negA) = -ax(negA);

        binv = eye(nConstraints);
        xb = bx;
        ax = [ax eye(nConstraints)];
        hx = [hx;
            sum(bx) * ones(nConstraints,1)];
        axs = ax;
        bxs = bx;
    end
    
    for phase = selfinit:2  
        done = false;
        iter = 0; % Iterator- used to cap maximum number of iterations
        %warning off; iterm = nchoosek(nb + nd, nb); warning on; <--TAKEN OUT FOR
        %CODEGEN
        iterm = nchoosek(nConstraints + nd, nConstraints);  %Replaces line before
        nbp = nConstraints + 1;
        ica = zeros(nbp, 1);
        iva = zeros(nbp, 1);
        tma = zeros(nbp, nConstraints);
        lindep = 1;
        
         %% Simplex algorithm
        while (~done) % Until done
           % Compute the gradient of the cost with respect to the non-basic 
           % variables and find the variable that gives the highest gradient
           dj = cx(id) - ax(:,id)' * (binv' * cx(ib));
           [djsorted, djindex] = sort(dj);
           djm = djsorted(lindep);
           js = djindex(lindep);
           nva = 0;
           if (djm < -epsxd)
              % Determine which variable reaches its limit first:
              % the non-basic variable or one of the basic variables
              ids = id(js);
              dbd = binv * ax(:,ids);
              ddm = hx(ids);
              nva = 1;
              ica(1) = 1; 
              
              for i=1:nConstraints
                 if (dbd(i) > epsx)
                    dd = xb(i) / dbd(i);
                    dde = dd - ddm;
                    if (dde < -epsx)
                        nva = 1;
                        ica(1) = 2;
                        iva(1) = i;
                        ddm = dd;
                    end
                    if (abs(dde) < epsx)
                        nva = nva + 1;
                        ica(nva) = 2;
                        iva(nva) = i;
                    end
                 end
                 
                 if dbd(i) < -epsx
                    dd = (xb(i) - hx(ib(i))) / dbd(i);
                    dde = dd - ddm;
                    if dde < -epsx
                        nva = 1;
                        ica(1) = 3;
                        iva(1) = i;
                        ddm = dd;
                    end
                    if (abs(dde) < epsx)
                        nva = nva + 1;
                        ica(nva) = 3;
                        iva(nva) = i;
                    end
                 end
              end
              
           else
              if (lindep > 1)
                  % NOTE(CT): Took out warning for codegen
                  disp('Stop due to linearly dependent base vectors in simplex');
              end
              done = true;
           end
           
           % Anticycling procedure using the perturbation approach
           if (nva > 1)
              is = 1;
              if (ica(1) == 1)
                  tma(1,:) = zeros(1,nConstraints);
                  is = 2;
              end
              for i = is:nva
                  tma(i,:) = binv(iva(i),:) / dbd(iva(i));
              end
              found = 0;
              itma = 1:nva;
              for j=1:nConstraints % search column by column of tma
                 if (found == 0)
                    tmam = tma(itma(1),j);
                    nvan = 1;
                    for i=2:nva % look for a unique minimum in a column
                       tman = tma(itma(i),j);
                       tmae = tman - tmam;
                       if tmae<-epsx
                           nvan = 1;
                           itma(1) = itma(i);
                           tmam = tman;
                       end
                       if (abs(tmae) < epsx);
                           nvan = nvan + 1;
                           itma(nvan) = itma(i);
                       end
                    end
                    nva = nvan;
                    if nva == 1 
                        found = 1;
                    end
                 end
              end
              icas = ica(itma(1));
              is = iva(itma(1));
           else
              icas = ica(1);
              is = iva(1);
           end
           
            % Return to regular simplex algorithm
            if (done == 0)
                switch icas
                    % Case 1: the non-basic variable reaches its upper limit
                    case 1
                        ipn(ids) = -ipn(ids);
                        cx(ids) = -cx(ids);
                        lindep = 1;
                        
                    % Case 2: a basic variable reaches its lower limit
                    % and is swapped with the non-basic variable
                    case 2
                        ibs = ib(is);
                        bidb = binv * (ax(:,ids) - ax(:,ibs));
                        if abs(1 + bidb(is)) < epsx
                            lindep = lindep + 1;
                        else
                            lindep = 1;
                            id(js) = ibs;
                            ib(is) = ids;
                        end
                        
                    % Case 3: a basic variable reaches its upper limit
                    % and is swapped with the non-basic variable
                    case 3
                        ibs = ib(is);
                        bidb = binv * (ax(:,ids) - ax(:,ibs));
                        if abs(1 + bidb(is)) < epsx
                            lindep = lindep + 1;
                        else
                            lindep = 1;
                            id(js) = ibs;
                            ib(is) = ids;
                            ipn(ibs) = -ipn(ibs);
                            cx(ibs) = -cx(ibs);
                        end
                end
                
                % Compute the new basic variables
                ax = axs;
                bx = bxs;
                for inx=1:xLength
                    if ipn(inx) < 0
                        ax(:,inx) = -axs(:,inx);
                        bx(:) = bx(:) - axs(:,inx) * hx(inx);
                    end
                end
                binv = inv(ax(:,ib));
                xb = binv * bx;
                jopt1 = cx(ib)' * xb;
                for inx=1:xLength
                    if ipn(inx) < 0
                        jopt1 = jopt1 - cx(inx) * hx(inx);
                    end
                end
                
            % Force stop for phase 1 if appropriate
            %if and(phase==1,jopt1<epsxd);if(max(ib)<=nx);done=1;end;end;
            else 
                done = true;
            end
            
            iter = iter + 1;
            if iter >= iterm
                error('Maximum number of iterations reached in simplex');
            end
        end  % end of while done==0, i.e. end of simplex iterations
        
        %% Post-processing
        if phase==1
            % Drop the slack variables and bring the original cx vector
           if (max(ib) > xLength)
              if (jopt1 > epsxd)
                 error('Feasible solution not found in phase 1 of simplex');
              else
                 error('Numerical problem with phase 1 of simplex (fixable)');
              end
           end
           nd = xLength - nConstraints;
           idp = sort(id);
           id = idp(1:nd);
           axs = axs(:,1:xLength);
           ax = axs;
           bx = bxs;
           cx = cxs;
           for inx=1:xLength
              if ipn(inx) < 0
                 ax(:,inx) = -axs(:,inx);
                 bx(:) = bx(:) - axs(:,inx) * hx(inx);
                 cx(inx) = -cxs(inx);
              end
           end
           binv = inv(ax(:,ib));
           xb = binv * bx;
        end            
    end % end of phase 1 and phase 2
    
    %% Obtain Solution
    % Obtain the solution x from the results
    x=zeros(xLength,1);
    for i=1:nConstraints
        ibi=ib(i);
        if ipn(ibi) < 0
           x(ibi) = hx(ibi) - xb(i);
        else
           x(ibi) = xb(i);
        end
    end
    for i=1:nd
        idi = id(i);
        if ipn(idi) < 0
            x(idi) = hx(idi);
        end
    end
end

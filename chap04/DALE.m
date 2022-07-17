function X=DALE(F,Q)
% function X=DALE(F,Q)
% Compute the X that satisfies X = F X F^H + Q for full F and Hermitian Q.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also CALE, CARE, DARE. Depends on Schur, GaussPP.
% Verify with DALEtest.

n=length(F); [U,T]=Schur(F'); F0=T'; Q0=U'*Q*U; X0=DALEtri(F0,Q0,n); X=U*X0*U';
end % function DALE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function X=DALEtri(F,Q,n)
% Compute the X that satisfies X = F^H X F + Q for lower-triangular F and Hermitian Q.
for i=1:n, f=F(i,i);
  X(i,i)     = Q(i,i) / (1-f*f');
  X(i+1:n,i) = GaussPP( eye(n-i)-f'*F(i+1:n,i+1:n), Q(i+1:n,i)+f'*X(i,i)*F(i+1:n,i), n-i);
  X(i,i+1:n) = X(i+1:n,i)';
  Q(i+1:n,i+1:n) = Q(i+1:n,i+1:n) + X(i,i)*F(i+1:n,i)*F(i+1:n,i)' + ...
     + F(i+1:n,i)*(X(i,i+1:n)*F(i+1:n,i+1:n)') + (F(i+1:n,i+1:n)*X(i+1:n,i))*F(i+1:n,i)';
end
end % function DALEtri

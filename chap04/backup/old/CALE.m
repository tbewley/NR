function X=CALE(A,Q)                                 % Numerical Renaissance Codebase 1.0
% This function finds the X that satisfies A' X + X A + Q = 0, where A and Q are full
% and Q is Hermitian.
n=size(A,1); [U,A0]=Schur(A); Q0=U'*Q*U; X0=CALEtri(A0,Q0,n); X=U*X0*U'; 
end % function CALE.m
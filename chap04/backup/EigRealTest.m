% script EigRealTest
% Test EigReal, together with ShiftedInversePower, on a random matrix.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; n=20; A=randn(n); lam=EigReal(A)
[S]=ShiftedInversePower(A,lam);    eig_error=norm(A*S-S*diag(lam))
[U,T]=ShiftedInversePower(A,lam);  schur_error=norm(A-U*T*U')

% end script EigRealTest

% script NR_EigRealTest
% Test NR_EigReal.m, together with NR_ShiftedInversePower.m, on a random matrix.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; n=20; A=randn(n); lam=NR_EigReal(A)
[S]=NR_ShiftedInversePower(A,lam);    eig_error=norm(A*S-S*diag(lam))
[U,T]=NR_ShiftedInversePower(A,lam);  schur_error=norm(A-U*T*U')

% end script NR_EigRealTest

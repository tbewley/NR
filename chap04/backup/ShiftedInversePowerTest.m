% script NR_ShiftedInversePowerTest
% Test NR_ShiftedInversePower.m on a random matrix with known eigenvalues.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; n=4; lambda=randn(n,1), Lambda=diag(lambda); S=rand(n); A=S*Lambda*inv(S)
[Snew]=NR_ShiftedInversePower(A,lambda);  eig_error=norm(A*Snew-Snew*Lambda)
[Unew,Tnew]=NR_ShiftedInversePower(A,lambda);  schur_error=norm(A-Unew*Tnew*Unew')

% end script NR_ShiftedInversePowerTest

% script CholeskyTest
% Test Cholesky on a random positive-definite matrix.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; n=5; format short; A=rand(n)+i*rand(n); A=A'*A; G=Cholesky(A,n), error=norm(A-G*G')

% end script CholeskyTest

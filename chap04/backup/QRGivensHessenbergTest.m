% script QRGivensHessenbergTest
% Test QRGivensHessenberg on a random (rectangular) Hessenberg matrix.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; m=5; n=4; A=randn(m,n)+i*randn(m,n);
for j=1:n-1, for i=j+2:m, A(i,j)=0; end, end, A  % forced matrix to be upper Hessenberg
[R,Q]=QRGivensHessenberg(A), nonorthogonality=norm(Q'*Q-eye(m)), residual=norm(Q*R-A)

% end script QRGivensHessenbergTest

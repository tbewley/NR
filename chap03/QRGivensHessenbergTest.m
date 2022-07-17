% script <a href="matlab:QRGivensHessenbergTest">QRGivensHessenbergTest</a>
% Test <a href="matlab:help QRGivensHessenberg">QRGivensHessenberg</a> on a random (rectangular) Hessenberg matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.4.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing QRGivensHessenberg on a random (rectangular) Hessenberg matrix.')
clear; m=5; n=4; A=randn(m,n)+i*randn(m,n);
for j=1:n-1, for i=j+2:m, A(i,j)=0; end, end, A  % forced matrix to be upper Hessenberg
[R,Q]=QRGivensHessenberg(A), nonorthogonality=norm(Q'*Q-eye(m)), residual=norm(Q*R-A)
disp(' ')

% end script QRGivensHessenbergTest

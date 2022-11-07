% script <a href="matlab:NR_QRGivensHessenbergTest">NR_QRGivensHessenbergTest</a>
% Test <a href="matlab:help NR_QRGivensHessenberg">NR_QRGivensHessenberg</a> on a random (rectangular) NR_Hessenberg matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.4.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing NR_QRGivensHessenberg on a random (rectangular) NR_Hessenberg matrix.')
clear; m=5; n=4; A=randn(m,n)+i*randn(m,n);
for j=1:n-1, for i=j+2:m, A(i,j)=0; end, end, A  % forced matrix to be upper NR_Hessenberg
[R,Q]=NR_QRGivensHessenberg(A), nonorthogonality=norm(Q'*Q-eye(m)), residual=norm(Q*R-A)
disp(' ')

% end script NR_QRGivensHessenbergTest

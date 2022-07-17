% script <a href="matlab:InvTest">InvTest</a>
% Test <a href="matlab:help Inv">Inv</a> on a random matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.2.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also GaussPPTest.

disp('Now testing Inv on a random matrix.')
n=5; A=randn(n); A(1,1)=0; A, Ainv=Inv(A), error=norm(A*Ainv-eye(n)), disp(' ')

% end script InvTest

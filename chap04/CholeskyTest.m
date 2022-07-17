% script <a href="matlab:CholeskyTest">CholeskyTest</a>
% Test <a href="matlab:help Cholesky">Cholesky</a> on a random positive-definite matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.8.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing Cholesky on a random positive-definite matrix.')
clear; n=5; format short; A=rand(n)+i*rand(n); A=A'*A; G=Cholesky(A,n), error=norm(A-G*G')
disp(' ')

% end script CholeskyTest

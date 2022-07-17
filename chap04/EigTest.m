% script <a href="matlab: EigTest">EigTest</a>
% Test <a href="matlab:help Eig">Eig</a> on random matrices of various structure.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing Eig on random matrices of various structure.')
clear; n=10; A_gen=randn(n)+sqrt(-1)*randn(n);  [lam_gen,S_gen]=Eig(A_gen,'g');
eig_general_error=norm(A_gen*S_gen-S_gen*diag(lam_gen))

clear; n=20; A=randn(n)+sqrt(-1)*randn(n); A_her=A*A'; [lam_her,S_her]=Eig(A_her,'h');
eig_hermitian_error=norm(A_her*S_her-S_her*diag(lam_her))

clear; n=20; A_real=randn(n); [lam_real,S_real]=Eig(A_real,'r');
eig_real_error=norm(A_real*S_real-S_real*diag(lam_real)), disp(' ')

% end script EigTest

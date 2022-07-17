% script <a href="matlab:SchurTest">SchurTest</a>
% Test <a href="matlab:help Schur">Schur</a> on random matrices of various structure.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing Schur on random matrices of various structure.')
clear; n=10; A_gen=randn(n)+sqrt(-1)*randn(n);  [U_gen,T_gen]=Schur(A_gen,'g');
schur_general_error=norm(A_gen-U_gen*T_gen*U_gen')

clear; n=20; A=randn(n)+sqrt(-1)*randn(n); A_her=A*A'; [U_her,T_her]=Schur(A_her,'h');
schur_hermitian_error=norm(A_her-U_her*T_her*U_her')

clear; n=20; A_real=randn(n); [U_real,T_real]=Schur(A_real,'r');
schur_real_error=norm(A_real-U_real*T_real*U_real'), disp(' ')

% end script SchurTest

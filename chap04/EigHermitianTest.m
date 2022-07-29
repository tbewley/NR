% script <a href="matlab:NR_EigHermitianTest">NR_EigHermitianTest</a>
% Test <a href="matlab:help NR_EigHermitian">NR_EigHermitian</a>, together with <a href="matlab:help NR_ShiftedInversePower">NR_ShiftedInversePower</a>, on a random matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing NR_EigHermitian, together with NR_ShiftedInversePower, on a random matrix.')
clear; n=20; A=randn(n)+sqrt(-1)*randn(n); A=A*A'; lam=NR_EigHermitian(A)
S=NR_ShiftedInversePower(A,lam);  eig_error=norm(A*S-S*diag(lam))
[U,T]=NR_ShiftedInversePower(A,lam);  schur_error=norm(A-U*T*U'), disp(' ')

% end script NR_EigHermitianTest

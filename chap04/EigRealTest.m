% script <a href="matlab:EigRealTest">EigRealTest</a>
% Test <a href="matlab:help EigReal">EigReal</a>, together with <a href="matlab:help ShiftedInversePower">ShiftedInversePower</a>, on a random matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing EigReal, together with ShiftedInversePower, on a random matrix.')
clear; n=20; A=randn(n); lam=EigReal(A)
[S]=ShiftedInversePower(A,lam);    eig_error=norm(A*S-S*diag(lam))
[U,T]=ShiftedInversePower(A,lam);  schur_error=norm(A-U*T*U'), disp(' ')

% end script EigRealTest

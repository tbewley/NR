% script <a href="matlab:MatrixExponentialTest">MatrixExponentialTest</a>
% Compare <a href="matlab:help MatrixExponential">MatrixExponential</a> to the result obtained via the eigen decomposition.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.2.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear; n=4; A=randn(n), t=randn(1)^2, Phi=MatrixExponential(A,t)
[lam,S]=Eig(A,'r'); Phi_via_Eig=real(S*diag(exp(lam*t))*Inv(S)), disp(' ')

disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:SS2TFTest">SS2TFTest</a>'), disp(' ')
% end script MatrixExponentialTest

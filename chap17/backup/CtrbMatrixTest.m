% script <a href="matlab:NR_CtrbMatrixTest">NR_CtrbMatrixTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Sections 20.5.1.1 and 20.5.3.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear; n=4; ni=2; A=randn(n,n); B=randn(n,ni);
disp('System {A,B}:'), NR_ShowSys(A,B), [CM,r]=NR_CtrbMatrix(A,B), disp(' ')

disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:NR_CtrbGrammianTest">NR_CtrbGrammianTest</a>'), disp(' ')
% end script NR_CtrbMatrixTest
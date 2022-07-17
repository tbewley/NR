% script <a href="matlab:ShowSysTest">ShowSysTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.1
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear, N=3; Ni=2; No=1; A=randn(N), B=randn(N,Ni), C=randn(No,N), D=randn(No,Ni)
disp('Full system:'),  ShowSys(A,B,C,D), pause
disp('{A,B,C} only:'), ShowSys(A,B,C),   pause
disp('{A,B} only:'),   ShowSys(A,B),     pause
disp('{A,C} only:'),   ShowSys(A,C)

disp(' '); disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:SSTransformTest">SSTransformTest</a>'), disp(' ')
% end script ShowSysTest
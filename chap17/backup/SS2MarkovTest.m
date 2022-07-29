% script <a href="matlab:NR_SS2MarkovTest">NR_SS2MarkovTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.3.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

n=5; ni=1; no=1; A=randn(n,n); B=randn(n,ni); C=randn(no,n); D=randn(no,ni);
disp('Random SS system:'),  NR_ShowSys(A,B,C,D), MarkovFromSS=NR_SS2Markov(A,B,C,D,n+1)
[num,den]=NR_SS2TF(A,B,C,D), MarkovFromTF=NR_TF2Markov(num,den)

disp(' '); disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:NR_TF2SSTest">NR_TF2SSTest</a>'), disp(' ')
% end script NR_SS2MarkovTest
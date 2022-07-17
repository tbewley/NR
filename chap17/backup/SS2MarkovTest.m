% script <a href="matlab:SS2MarkovTest">SS2MarkovTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.3.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

n=5; ni=1; no=1; A=randn(n,n); B=randn(n,ni); C=randn(no,n); D=randn(no,ni);
disp('Random SS system:'),  ShowSys(A,B,C,D), MarkovFromSS=SS2Markov(A,B,C,D,n+1)
[num,den]=SS2TF(A,B,C,D), MarkovFromTF=TF2Markov(num,den)

disp(' '); disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:TF2SSTest">TF2SSTest</a>'), disp(' ')
% end script SS2MarkovTest
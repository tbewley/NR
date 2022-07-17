% script <a href="matlab:ThomasTTTest">ThomasTTTest</a>
% Test <a href="matlab:help ThomasTT">ThomasTT</a> on a random tridiagonal Toeplitz matrix.
% Note that this test script is NOT efficient, and is meant for TESTING PURPOSES ONLY.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also ThomasTest, CirculantTest, ThomasParallelTest.

disp('Now testing ThomasTT on a random tridiagonal Toeplitz matrix.')
n=5; m=2;  % note that m is the number of RHS vectors
a=randn; b=randn; c=randn; G=randn(n,m);
A=a*diag(ones(n-1,1),-1)+b*diag(ones(n,1),0)+c*diag(ones(n-1,1),1);
[X]=ThomasTT(a,b,c,G,n); A_times_X_from_ThomasTT=A*X, G, error=norm(A*X-G), disp(' ')

% end script ThomasTTTest

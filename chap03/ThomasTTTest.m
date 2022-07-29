% script <a href="matlab:NR_ThomasTTTest">NR_ThomasTTTest</a>
% Test <a href="matlab:help NR_ThomasTT">NR_ThomasTT</a> on a random tridiagonal Toeplitz matrix.
% Note that this test script is NOT efficient, and is meant for TESTING PURPOSES ONLY.
% Numerical Renaissance codebase, Chapter 2, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_ThomasTest, NR_CirculantTest, NR_ThomasParallelTest.

disp('Now testing NR_ThomasTT on a random tridiagonal Toeplitz matrix.')
n=5; m=2;  % note that m is the number of RHS vectors
a=randn; b=randn; c=randn; G=randn(n,m);
A=a*diag(ones(n-1,1),-1)+b*diag(ones(n,1),0)+c*diag(ones(n-1,1),1);
[X]=NR_ThomasTT(a,b,c,G,n); A_times_X_from_NR_ThomasTT=A*X, G, error=norm(A*X-G), disp(' ')

% end script NR_ThomasTTTest

% script <a href="matlab:TriDiagTest">NR_TriDiagTest</a>
% Illustrates how the code <a href="matlab:help TriDiag">TriDiag</a> may be used to construct tridiagonal
% and tridiagonal circulant matrices.
% Numerical Renaissance codebase, Chapter 1, https://github.com/tbewley/NR
% Copyright 2021 by Thomas Bewley, distributed under BSD 3-Clause License. 

n=7; a=randn(n,1); b=randn(n,1); c=randn(n,1);
A_tridiagonal=TriDiag([0; a(2:n)], b, [c(1:n-1); 0]) 
A_tridiagonal_circulant=TriDiag(a,b,c)
% end script NR_TriDiagTest

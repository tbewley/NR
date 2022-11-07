function [A]=NR_Inv(A)
% function [A]=NR_Inv(A)
% Compute the inverse of a nonsingular matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.2.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Depends on <a href="matlab:help NR_GaussPP">NR_GaussPP</a>.

n=length(A); [A]=NR_GaussPP(A,eye(n),n);
% end function NR_Inv

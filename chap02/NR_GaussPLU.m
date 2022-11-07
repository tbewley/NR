function [C] = NR_GaussPLU(Amod,B,p,n)
% function [C] = NR_GaussPLU(Amod,B,p,n)
% This function uses the PLU decomposition returned (in the modified A and p) by a prior
% call to NR_GaussPP to solve the system AX=B using forward / back substitution.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.2.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_GaussPP. Verify with NR_GaussPPTest.

for j=1:n, C(j,:)=B(p(j),:); end, [C] = NR_GaussLU(Amod,C,n);
end % function NR_GaussPLU

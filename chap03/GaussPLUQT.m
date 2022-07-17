function [B] = GaussPLUQT(Amod,B,p,q,n)
% function [B] = GaussPLUQT(Amod,B,p,q,n)
% This function uses the PLUQ^T decomposition returned (in the modified A, p, and q) by a
% prior call to GaussCP to solve the system AX=B using forward / back substitution.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.2.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also GaussCP. Verify with GaussCPTest.

for j=1:n, C(j,:)=B(p(j),:); end, [C]=GaussLU(Amod,C,n);  for j=1:n, B(q(j),:)=C(j,:); end
end % function GaussPLUQT

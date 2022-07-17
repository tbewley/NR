function [g,q,n,a,b] = GCF(a,b)
% function [g,q,n,a,b] = GCF(a,b)
% Solve the for the GCF identity a*x+b*y=g via Euclid's algorithm.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section B.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAB">Appendix B</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See GCFTest.

if length(b)>length(a), [a,b]=Swap(a,b), end, n=0;
rm=a; r=b; while norm(r,inf)>1e-13
  r=r(find(r,1):end); [quo,rem]=PolyDiv(rm,r);  % Reduce (rm,r) to their GCD via Euclid's
  n=n+1; q{n}=quo; rm=r; r=rem;                 % algorithm, saving the quotients quo.
end; g=rm;
end % function GCF
function [x,y] = Bezout(a,b,g,q,n)
% function [x,y] = Bezout(a,b,g,q,n)
% Solve for {x,y} solving Bezout identity a*x+b*y=g via the Extended Euclidian algorithm.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section B.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAB">Appendix B</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See BezoutTest.

x=0; y=1; for j=n-1:-1:1                       % Using q from GCF code, compute {x,y}
  t=x; x=y; y=PolyAdd(t,-PolyConv(q{j},y));    % via the Extended Euclidean algorithm
end, y=y(find(y,1):end); x=x(find(x,1):end);
end % function Bezout

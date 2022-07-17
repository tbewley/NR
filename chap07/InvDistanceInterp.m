function [fn]=InvDistanceInterp(xn,c,f,p,R)
% function [fn]=InvDistanceInterp(xn,c,f,p,R)
% Given the data {c,f}, compute the inverse distance interpolant fn at a new point xn.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.4.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also PolyharmonicSpline.  Verify with InvDistanceInterpTest.

N=length(f); C=0; fn=0;
for i=1:N, d=norm(xn-c(:,i),2); if d<R, C=C+1/d^p; fn=fn+f(i)/d^p; end, end, fn=fn/C;
end % function InvDistanceInterp

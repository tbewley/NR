function [f]=PolyharmonicSpline(x,c,v,w,k)
% function [f]=PolyharmonicSpline(x,c,v,w,k)
% Given the centers c, the order of the radial basis functions k, and the weights {v,w} of
% the polyharmonic splines (as computed by PolyharmonicSplineSetup), compute the
% polyharmonic spline interpolant f at the point x.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.4.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also InvDistanceInterp.  Verify with PolyharmonicSplineTest.

N=size(c,2); f=v'*[1; x];
if mod(k,2)==1, for i=1:N
  r=norm(x-c(:,i)); f=f+w(i)*r^k;
end, else, for i=1:N
  r=norm(x-c(:,i)); if r>=1, f=f+w(i)*r^k*log(r); else, f=f+w(i)*r^(k-1)*log(r^r); end
end, end
end % function PolyharmonicSpline

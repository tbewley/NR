function [f]=LinearSpline(x,xd,fd)
% function [f]=LinearSpline(x,xd,fd)
% Perform linear interpolation based on the {xd,fd} and evaluate at the points in x.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.3.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also Lagrange, CubicSpline.  Verify with LinearSplineTest.

n=length(xd); m=length(x); i=1; for j=1:m
  for i=i:n-1, if xd(i+1) > x(j), break, end, end  % Find the i such that xd(i)<=x<=xd(i+1)
  f(j)=(fd(i+1)*(x(j)-xd(i)) + fd(i)*(xd(i+1)-x(j)))/(xd(i+1)-xd(i));
end
end % function LinearSpline

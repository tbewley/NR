function [f]=Lagrange(x,xd,fd)
% function [f]=Lagrange(x,xd,fd)
% Perform Lagrange interpolation based on the {xd,fd} and evaluate at the points in x.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.3.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also LinearSpline, CubicSpline.  Verify with LagrangeTest.

n=length(xd); m=length(x); for j=1:m, f(j)=0; for k=1:n
  L=1; for i=1:n, if i~=k, L=L*(x(j)-xd(i))/(xd(k)-xd(i)); end, end, f(j)=f(j)+fd(k)*L;
end, end
end % function Lagrange

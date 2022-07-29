function [f]=NR_Lagrange(x,xd,fd)
% function [f]=NR_Lagrange(x,xd,fd)
% Perform NR_Lagrange interpolation based on the {xd,fd} and evaluate at the points in x.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_LinearSpline, NR_CubicSpline.  Verify with NR_LagrangeTest.

n=length(xd); m=length(x); for j=1:m, f(j)=0; for k=1:n
  L=1; for i=1:n, if i~=k, L=L*(x(j)-xd(i))/(xd(k)-xd(i)); end, end, f(j)=f(j)+fd(k)*L;
end, end
end % function NR_Lagrange

function [f]=NR_BilinearSpline(x,y,xd,yd,fd)
% function [f]=NR_BilinearSpline(x,y,xd,yd,fd)
% Perform bilinear interpolation based on {xd,yd,fd} and evaluate at the grid {x,y}.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_BilinearSpline.  Verify with NR_BilinearSplineTest.

ndx=length(xd); ndy=length(yd); nx=length(x); ny=length(y); i=1; 
for ii=1:nx; j=1;
  for i=i:ndx-1,   if xd(i+1)>x(ii), break, end, end % Find i s.t. xd(i)<=x(ii)<=xd(i+1)
  for jj=1:ny
    for j=j:ndy-1, if yd(j+1)>y(jj), break, end, end % Find j s.t. yd(j)<=y(jj)<=yd(j+1)
    d10=(xd(i+1)-x(ii))/(xd(i+1)-xd(i)); d11=1-d10;
    d20=(yd(j+1)-y(jj))/(yd(j+1)-yd(j)); d21=1-d20;
    f(ii,jj)=fd(i,j)*d10*d20+fd(i+1,j)*d11*d20+fd(i,j+1)*d10*d21+fd(i+1,j+1)*d11*d21;
  end
end
end % function NR_BilinearSpline

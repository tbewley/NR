function [f]=BilinearSpline(x,y,xd,yd,fd)
% function [f]=BilinearSpline(x,y,xd,yd,fd)
% Perform bilinear interpolation based on {xd,yd,fd} and evaluate on the grid {x,y}.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.4.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also BilinearSpline.  Verify with BilinearSplineTest.

ndx=length(xd); ndy=length(yd); nx=length(x); ny=length(y); i=1; 
for ii=1:nx; j=1;
  for i=i:ndx-1,   if xd(i+1)>x(ii), break, end, end  % Find i s.t. xd(i)<=x(ii)<=xd(i+1)
  for jj=1:ny
    for j=j:ndy-1, if yd(j+1)>y(jj), break, end, end  % Find j s.t. yd(j)<=y(jj)<=yd(j+1)
    d10=(xd(i+1)-x(ii))/(xd(i+1)-xd(i)); d11=1-d10;   % Compute the distance across cell,
    d20=(yd(j+1)-y(jj))/(yd(j+1)-yd(j)); d21=1-d20;   % then compute the interpolant.
    f(ii,jj)=fd(i,j)*d10*d20+fd(i+1,j)*d11*d20+fd(i,j+1)*d10*d21+fd(i+1,j+1)*d11*d21;
  end
end
end % function BilinearSpline

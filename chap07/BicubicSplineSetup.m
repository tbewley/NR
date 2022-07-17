function [fx,fy,fxy,Ainv]=BicubicSplineSetup(xd,yd,fd,ec)
% function [fx,fy,fxy,Ainv]=BicubicSplineSetup(xd,yd,fd,ec)
% Determine the derivatives {fx,fy,fxy} and Ainv for constructing the bicubic interpolant
% of the uniform grid of datapoints {xd,yd,fd}.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.3.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also BilinearSpline. Sets up subsequent call to BicubicSpline.
% Verify with BicubicSplineTest.

Nx=length(xd); Ny=length(yd);  
for j=1:Ny                                            % Compute the necessary derivatives
  [g,h]=CubicSplineSetup(xd,fd(:,j),ec); [t,fx(:,j)]=CubicSpline(xd,xd,fd(:,j),g,h); 
end
fx=fx*h(1); % (scale so later interpolations can be based on integer grid spacing)
for i=1:Nx
  [g,h]=CubicSplineSetup(yd,fd(i,:),ec); [t,fy(i, :)]=CubicSpline(yd,yd,fd(i,:),g,h); 
  [g,h]=CubicSplineSetup(yd,fx(i,:),ec); [t,fxy(i,:)]=CubicSpline(yd,yd,fx(i,:),g,h); 
end
fy=fy*h(1); fxy=fxy*h(1); 
Ainv=[1  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0; % Set up Ainv
      0  0  0  0  1  0  0  0  0  0  0  0  0  0  0  0;
     -3  3  0  0 -2 -1  0  0  0  0  0  0  0  0  0  0;
      2 -2  0  0  1  1  0  0  0  0  0  0  0  0  0  0;
      0  0  0  0  0  0  0  0  1  0  0  0  0  0  0  0;
      0  0  0  0  0  0  0  0  0  0  0  0  1  0  0  0;
      0  0  0  0  0  0  0  0 -3  3  0  0 -2 -1  0  0;
      0  0  0  0  0  0  0  0  2 -2  0  0  1  1  0  0;
     -3  0  3  0  0  0  0  0 -2  0 -1  0  0  0  0  0;
      0  0  0  0 -3  0  3  0  0  0  0  0 -2  0 -1  0;
      9 -9 -9  9  6  3 -6 -3  6 -6  3 -3  4  2  2  1;
     -6  6  6 -6 -3 -3  3  3 -4  4 -2  2 -2 -2 -1 -1;
      2  0 -2  0  0  0  0  0  1  0  1  0  0  0  0  0;
      0  0  0  0  2  0 -2  0  0  0  0  0  1  0  1  0;
     -6  6  6 -6 -4 -2  4  2 -3  3 -3  3 -2 -1 -2 -1;
      4 -4 -4  4  2  2 -2 -2  2 -2  2 -2  1  1  1  1];
end % function CubicSplineSetup

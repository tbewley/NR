function [fx,fy,fxy,Ainv]=NR_BicubicSplineSetup(xd,yd,fd,ec)
% function [fx,fy,fxy,Ainv]=NR_BicubicSplineSetup(xd,yd,fd,ec)
% Determine the derivatives {fx,fy,fxy} and Ainv for constructing the bicubic interpolant
% of the uniform grid of datapoints {xd,yd,fd}.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_BilinearSpline. Sets up subsequent call to NR_BicubicSpline.
% Verify with NR_BicubicSplineTest.

Nx=length(xd); Ny=length(yd);  
for j=1:Ny                                            % Compute the necessary derivatives
  [g,h]=NR_CubicSplineSetup(xd,fd(:,j),ec); [t,fx(:,j)]=NR_CubicSpline(xd,xd,fd(:,j),g,h); 
end
fx=fx*h(1); % (scale so later interpolations can be based on integer grid spacing)
for i=1:Nx
  [g,h]=NR_CubicSplineSetup(yd,fd(i,:),ec); [t,fy(i, :)]=NR_CubicSpline(yd,yd,fd(i,:),g,h); 
  [g,h]=NR_CubicSplineSetup(yd,fx(i,:),ec); [t,fxy(i,:)]=NR_CubicSpline(yd,yd,fx(i,:),g,h); 
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
end % function NR_CubicSplineSetup

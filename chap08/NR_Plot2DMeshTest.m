% script <a href="matlab:NR_Plot2DMeshTest">NR_Plot2DMeshTest</a>
% Test <a href="matlab:help Plot2DMesh">NR_Plot2DMesh</a> by constructing an interesting 2D grid.
% Numerical Renaissance codebase, Chapter 8, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_Stretch1DMeshTest.  Depends on NR_Stretch1DMesh.

im=sqrt(-1); n=30; w=[0:1/(n-1):1];
x=NR_Stretch1DMesh(w,'h',0,1,1.75); y=NR_Stretch1DMesh(w,'p',0,1,1,2);
for i=1:n, for j=1:n, z(i,j)=x(i)+im*y(j); end, end, NR_Plot2DMesh(z,1,n,n)

% end script NR_Plot2DMeshTest

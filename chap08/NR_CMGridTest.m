% script <a href="matlab:NR_CMGridTest">NR_CMGridTest</a>
% Compute a conformal mapping from a Cartesian grid in the upper half-plane to the region
% above a unit step.
% Numerical Renaissance codebase, Chapter 8, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_OrthGridTest, NR_SCGridTest.

clear; close all; g.x0=-9; g.x1=13; g.y1=3; II=131; JJ=31;
z=NR_OrthGrid(II,JJ,'Cartesian',g,0,0,0,0); NR_Plot2DMesh(z,1,II,JJ)
w=(sqrt(z-1).*sqrt(z+1)+acosh(z))/pi;    NR_Plot2DMesh(w,2,II,JJ)
% end script NR_CMGridTest

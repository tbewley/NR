% script <a href="matlab:NR_LagrangeTest">NR_LagrangeTest</a>
% Test <a href="matlab:help NR_Lagrange">NR_Lagrange</a> on data from a smooth (tanh) function.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

close all, clear, xmin=-5; xmax=5; xd=[xmin:1:xmax]; fd=tanh(xd);
x=[xmin:.01:xmax]; f=tanh(x); 
L=NR_Lagrange(x,xd,fd); plot(xd,fd,'k+',x,f,'k--',x,L,'k-')

% end script NR_LagrangeTest

% script <a href="matlab:NR_LinearSplineTest">NR_LinearSplineTest</a>
% Test <a href="matlab:help NR_LinearSpline">NR_LinearSpline</a> on data from a smooth function.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

close all, clear, L=4*pi; xmin=0; xmax=L; ep=.0001; nd=10; n=100;
xd=[xmin:L/(nd-1):xmax]; fd=sin(xd+ep)./(xd+ep); x=[xmin:L/(n-1):xmax]; f=sin(x+ep)./(x+ep);
LS=NR_LinearSpline(x,xd,fd); plot(xd,fd,'k+',x,f,'k--',x,LS,'k-'); axis([0 L -.25 1.05])

% end script NR_LinearSplineTest

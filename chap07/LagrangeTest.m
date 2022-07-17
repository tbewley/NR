% script <a href="matlab:LagrangeTest">LagrangeTest</a>
% Test <a href="matlab:help Lagrange">Lagrange</a> on data from a smooth (tanh) function.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.3.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

close all, clear, xmin=-5; xmax=5; xd=[xmin:1:xmax]; fd=tanh(xd);
x=[xmin:.01:xmax]; f=tanh(x); 
L=Lagrange(x,xd,fd); plot(xd,fd,'k+',x,f,'k--',x,L,'k-')

% end script LagrangeTest

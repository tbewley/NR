function PlotXY(x,y,t,xmin,xmax,ymin,ymax)
% function PlotXY(x,y,t,xmin,xmax,ymin,ymax)
% A supplemental plotting code used in several of the simulations in Chapter 11 of NR.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 11.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap11">Chapter 11</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

plot(x,y);  xlabel('x');  ylabel('u');
title(sprintf('Time = %5.2f',t)); axis([xmin xmax ymin ymax]); pause(0.001);
end % function PlotXY

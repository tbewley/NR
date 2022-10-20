function f=RHS_Rossler(x,p)                                
% function f=RHS_Rossler(x,p)
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 10.4.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap10">Chapter 10</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

f=[-x(2)-x(3);  x(1)+p.a*x(2);  p.b+x(3)*(x(1)-p.c)];
end % function RHS_Rossler

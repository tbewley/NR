function [xt,yt,r,s] = Diophantine(a,b,g,c,x,y)
% function [xt,yt,r,s] = Diophantine(a,b,g,c,x,y)
% Solve the polynomial Diophantine eqn a*xt+b*yt=c*g, using the results of GCD and Bezout.
% The solution {xt,yt} returned is the solution with the lowest order for yt;
% the general solution is given by {xt+r*t,yt+s*t} for any polynomial t.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section B.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAB">Appendix B</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See DiophantineTest.

x=PolyConv(x,c), y=PolyConv(y,c), r=-PolyDiv(b,g), s=PolyDiv(a,g),
[k,y]=PolyDiv(y,s),            x=PolyAdd(x,PolyConv(r,-k)),
yt=y(find(abs(y)>1e-8,1):end); xt=x(find(abs(x)>1e-8,1):end);
end % function Diophantine

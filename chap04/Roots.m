function x = Roots(a)
% function x = Roots(a)
% Compute the roots of a polynomial a(1)*x^n+a(2)*x^(n-1)+...+a(n+1)=0 with |a(1)|>0.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Depends on <a href="matlab:help Eig">Eig</a>.

n=size(a,2); A=[-a(2:n)/a(1); eye(n-2,n-1)]; x=Eig(A);
end % function Roots

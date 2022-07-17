function [c]=TaylorTable(x,w) 
% function [c]=TaylorTable(x,w) 
% Given x locations and w= which derivative, compute the corresponding FD expression. 
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 8.1.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap08">Chapter 8</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Verify with: <a href="matlab:help TaylorTableTest">TaylorTableTest</a>.

n=length(x); for i=1:n; for j=1:n; A(i,j)=x(j)^(i-1)/factorial(i-1); end; end
b=zeros(n,1); b(w+1)=1; c=A\b; 
end % function TaylorTable

function [m]=TF2Markov(b,a)
% function [m]=TF2Markov(b,a)
% Compute the first n Markov parameters of a CT or DT SISO system in TF form.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.3.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Verify with: <a href="matlab:help TF2MarkovTest">TF2MarkovTest</a>.

n=length(a); m=length(b); b=[zeros(1,n-m) b]; u=[1; zeros(n-1,1)]; y=zeros(n,1);
for k=1:n, y(2:n)=y(1:n-1); y(1)=b*u-a(1,2:n)*y(2:n,1); u=[0; u(1:n-1)]; end; m=y(n:-1:1);
end % function TF2Markov

% script <a href="matlab:ResponseTest">ResponseTest</a>
% Test <a href="matlab:help Response">Response</a> by plotting the step response to a simple oscillatory system.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 10.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap10">Chapter 10</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

A=[0 1;-1 0]; B=eye(2); C=eye(2); D=zeros(2); type=1; g.T=15; g.linestyle='k-';
Response(A,B,C,D,type,g)

% end script ResponseTest

function [A,B,C]=SSTransform(A,B,C,R)
% function [A,B,C]=SSTransform(A,B,C,R)
% Transform a state-space form.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.1.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Verify with: <a href="matlab:help SSTransformTest">SSTransformTest</a>.

Ri=Inv(R); A=Ri*A*R; B=Ri*B; C=C*R;
end % function SSTransform
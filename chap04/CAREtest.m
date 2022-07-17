% script <a href="matlab:CAREtest">CAREtest</a>
% Test <a href="matlab:help CARE">CARE</a> with random A and random Q>0, S>0.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also CALEtest, DALEtest, DAREtest. 

disp('Now testing CARE with random A and random Q>0, S>0.')
clear; n=40; Q=randn(n); Q=Q*Q'; S=randn(n); S=S*S'; A=randn(n);
X=CARE(A,S,Q); error_CARE=norm(A'*X+X*A-X*S*X+Q), disp(' ')

% end script CAREtest

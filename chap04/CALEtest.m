% script <a href="matlab:CALEtest">CALEtest</a>
% Test <a href="matlab:help CALE">CALE</a> with random A and random Q>0.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also SylvesterTest, CAREtest, DALEtest, DAREtest. 

disp('Now testing CALE with random A and random Q>0.')
clear; n=5; Q=randn(n); Q=Q*Q'; A=randn(n);
X=CALE(A,Q); error_CALE=norm(A*X+X*A'+Q), disp(' ')

% end script CALEtest

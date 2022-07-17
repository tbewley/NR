% script <a href="matlab:DALEtest">DALEtest</a>
% Test <a href="matlab:help DALE">DALE</a> with random F and random Q>0.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also CALEtest, CAREtest, DAREtest. 

disp('Now testing DALE with random F and random Q>0.')
clear; n=40; Q=randn(n); Q=Q*Q'; F=randn(n);
X=DALE(F,Q); error_DALE=norm(F*X*F'-X+Q), disp(' ')

% end script DALEtest

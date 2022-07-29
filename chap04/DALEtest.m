% script <a href="matlab:NR_DALEtest">NR_DALEtest</a>
% Test <a href="matlab:help NR_DALE">NR_DALE</a> with random F and random Q>0.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_CALEtest, NR_CAREtest, NR_DAREtest. 

disp('Now testing NR_DALE with random F and random Q>0.')
clear; n=40; Q=randn(n); Q=Q*Q'; F=randn(n);
X=NR_DALE(F,Q); error_NR_DALE=norm(F*X*F'-X+Q), disp(' ')

% end script NR_DALEtest

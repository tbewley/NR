% script <a href="matlab:QRcgsTest">QRcgsTest</a>
% Test <a href="matlab:help QRcgs">QRcgs</a> on a random matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing QRcgs on a random matrix')
clear, m=5; n=4; A=randn(m,n)+i*randn(m,n)  % Try tall or square (m>=n), real or complex A.
[Q,R]=QRcgs(A), nonorthogonality=norm(Q'*Q-eye(n)), residual=norm(Q*R-A), disp(' ')

% end script QRcgsTest

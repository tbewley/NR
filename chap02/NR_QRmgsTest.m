% script <a href="matlab:QRmgsTest">QRmgsTest</a>
% Test <a href="matlab:help QRmgs">QRmgs</a> on a random matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing QRmgs on a random matrix')
clear; m=5; n=4; A=randn(m,n)+i*randn(m,n); % Try tall or square (m>=n), real or complex A.
A(:,3)=A(:,1);    % Note: the unpivoted QRcgs algorithm would fail on this singular matrix!
A, [Q,R,pi,r]=QRmgs(A)             % Note that the diagonal elements of R come out ordered.
Pi=zeros(n); for i=1:n, Pi(pi(i),i)=1; end
nonorthogonality=norm(Q'*Q-eye(r)), residual=norm(Q*R-A*Pi), disp(' ')

% end script QRmgsTest

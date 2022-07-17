% script <a href="matlab:QRHouseholderTest">QRHouseholderTest</a>
% Test <a href="matlab:help QRHouseholder">QRHouseholder</a> on a random matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing QRHouseholder on a random matrix')
clear; m=5; n=4; A=randn(m,n)+i*randn(m,n); A(:,3)=A(:,1);

[R_unordered,Q]=QRHouseholder(A)  % The diagonal elements of R are unordered in this case.
nonorthogonality=norm(Q'*Q-eye(m)), residual=norm(Q*R_unordered-A), pause
 
[R_ordered,Q,pi,r]=QRHouseholder(A) % The diagonal elements of R are ordered in this case.
Pi=zeros(n); for i=1:n, Pi(pi(i),i)=1; end
nonorthogonality=norm(Q'*Q-eye(m)), residual=norm(Q*R_ordered-A*Pi), disp(' ')

% end script QRHouseholderTest

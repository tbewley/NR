% script DALEtest
% Test DALE with random F and random Q>0.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; n=40; Q=randn(n); Q=Q*Q'; F=randn(n);
X=DALE(F,Q,n); error_DALE=norm(F*X*F'-X+Q)

% end script DALEtest

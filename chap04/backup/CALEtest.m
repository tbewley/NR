% script CALEtest
% Test CALE with random A and random Q>0.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; n=40; Q=randn(n); Q=Q*Q'; A=randn(n);
X=CALE(A,Q); error_CALE=norm(A*X+X*A'+Q)

% end script CALEtest

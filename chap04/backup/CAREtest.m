% script CAREtest
% Test CARE with random A and random Q>0, S>0.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; n=40; Q=randn(n); Q=Q*Q'; S=randn(n); S=S*S'; A=randn(n);
X=CARE(A,S,Q); error_CARE=norm(A'*X+X*A-X*S*X+Q)

% end script CAREtest

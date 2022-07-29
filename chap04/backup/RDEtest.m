% script NR_RDEtest
% Test NR_RDE with random F and random Q>0, S>0, simply by marching the DRE to steady
% state and making sure that the result satisfies the corresponding NR_DARE.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; format compact; n=6; Q=randn(n); Q=Q*Q'; S=randn(n); S=S*S'; F=randn(n);
X=NR_RDE(eye(n),F,S,Q,n,1024), error_NR_RDEsteadystate=norm(F'*X*inv(eye(n)+S*X)*F-X+Q)

% end script NR_RDEtest

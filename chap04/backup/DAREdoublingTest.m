% script NR_DAREdoublingTest
% Test NR_DARE.m with random F and random Q>0, S>0.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

clear; n=6; Q=randn(n); Q=Q*Q'; S=randn(n); S=S*S'; F=randn(n);
Y=real(NR_DARE(F,S,Q)),   error_NR_DARE        =norm(F'*Y*inv(eye(n)+S*Y)*F-Y+Q)
Z=NR_DAREevolving(F,S,Q), error_NR_DAREevolving=norm(F'*Z*inv(eye(n)+S*Z)*F-Z+Q)
X=NR_DAREdoubling(F,S,Q), error_NR_DAREdoubling=norm(F'*X*inv(eye(n)+S*X)*F-X+Q)

% end script NR_DAREdoublingTest

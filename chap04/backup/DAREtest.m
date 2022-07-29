% script NR_DAREtest
% Test NR_DARE & NR_DAREdoubling with random F and random Q>0, S>0.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

NR_RDEtest

M   =[F+S*inv(F')*Q, -S*inv(F'); -inv(F')*Q, inv(F')];
Minv=[inv(F), inv(F)*S; Q*inv(F), F'+Q*inv(F)*S];     check=norm(eye(2*n)-M*Minv)

Y=real(NR_DARE(F,S,Q,n)),      error_NR_DARE          =norm(F'*Y*inv(eye(n)+S*Y)*F-Y+Q)
Z=NR_DAREdoubling(F,S,Q,n,10), error_NR_DAREdoubling  =norm(F'*Z*inv(eye(n)+S*Z)*F-Z+Q)

% end script NR_DAREtest

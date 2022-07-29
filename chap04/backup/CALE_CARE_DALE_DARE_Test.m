% Test script for NR_CALE, NR_CARE, NR_DALE, and NR_DARE         % Numerical Renaissance Codebase 1.0
clear; n=40; S=rand(n); Q=rand(n); S=S*S'; Q=Q*Q'; A=rand(n); F=rand(n); 
X=NR_CALE(A,Q); eNR_CALE=norm(A'*X+X*A+Q), X=NR_CARE(A,S,Q); eNR_CARE=norm(A'*X+X*A-X*S*X+Q)
X=NR_DALE(F,Q); eNR_DALE=norm(F'*X*F-X+Q), X=NR_DARE(F,S,Q); eNR_DARE=norm(F'*X*inv(eye(n)+S*X)*F-X+Q)

% Test script for CALE, CARE, DALE, and DARE         % Numerical Renaissance Codebase 1.0
clear; n=40; S=rand(n); Q=rand(n); S=S*S'; Q=Q*Q'; A=rand(n); F=rand(n); 
X=CALE(A,Q); eCALE=norm(A'*X+X*A+Q), X=CARE(A,S,Q); eCARE=norm(A'*X+X*A-X*S*X+Q)
X=DALE(F,Q); eDALE=norm(F'*X*F-X+Q), X=DARE(F,S,Q); eDARE=norm(F'*X*inv(eye(n)+S*X)*F-X+Q)

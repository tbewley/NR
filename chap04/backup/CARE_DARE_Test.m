N=4; A=rand(N); S=rand(N); Q=rand(N); S=S*S'; Q=Q*Q';
X=NR_CARE(A,S,Q);  norm(A'*X+X*A-X*S*X+Q)

F=rand(N);
X=NR_DARE(F,S,Q);  norm(F'*X*inv(eye(N)+S*X)*F-X+Q)


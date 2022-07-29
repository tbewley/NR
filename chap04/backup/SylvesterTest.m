% script NR_SylvesterTest
% Test NR_Sylvester with random A and B and C.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

m=4, n=5, A=rand(m,m); B=rand(n,n); C=rand(m,n);
g=1; X=NR_Sylvester(A,B,C,g,m,n), norm(A*X-X*B-g*C)

% end script NR_SylvesterTest

function X=DARE(F,S,Q,n)
% function X=DARE(F,S,Q,n)
% Finds the X that satisfies X = F' X (I+ S X)^{-1} F + Q, with Q>=0, S>=0, and |F|<>0.
% This code uses an approach based on an ordered Schur decomposition.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

E=inv(F'); [U,T]=Schur([F+S*E*Q -S*E; -E*Q E]); [U,T]=ReorderSchur(U,T,'unitdisk');
X=GaussPP(U(1:n,1:n)',U(n+1:2*n,1:n)',n);
end % function DARE

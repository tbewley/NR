function X=NR_DARE(F,S,Q,n)
% function X=NR_DARE(F,S,Q,n)
% Finds the X that satisfies X = F' X (I+ S X)^{-1} F + Q, with Q>=0, S>=0, and |F|<>0.
% This code uses an approach based on an ordered NR_Schur decomposition.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

E=inv(F'); [U,T]=NR_Schur([F+S*E*Q -S*E; -E*Q E]); [U,T]=NR_ReorderSchur(U,T,'unitdisk');
X=NR_GaussPP(U(1:n,1:n)',U(n+1:2*n,1:n)',n);
end % function NR_DARE

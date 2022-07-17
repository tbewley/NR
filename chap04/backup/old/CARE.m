function X=CARE(A,S,Q)                               % Numerical Renaissance Codebase 1.0
% This function finds the X that satisfies A' X + X A - X S X + Q = 0, with Q >= 0, S >= 0.
% Defining S=B R^{-1} B', we also assume (A,B) is stabilizable and (A,Q) is detectable.
n=size(A,1); [U,T]=Schur([A -S; -Q -A']);
[U,T]=ReorderSchur(U,T,'lhp');  X = U(n+1:2*n,1:n) / U(1:n,1:n);
end % function CARE.m
function X=NR_CARE(A,S,Q)
% function X=NR_CARE(A,S,Q)
% This function finds the X that satisfies A' X + X A - X S X + Q = 0, with Q >= 0, S >= 0.
% Defining S=B R^{-1} B', we also assume (A,B) is stabilizable and (A,Q) is detectable.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_CALE, NR_DALE, NR_DARE. Depends on NR_Schur, NR_ReorderSchur, NR_GaussPP.
% Verify with NR_CAREtest.

n=size(A,1); [U,T]=NR_Schur([A -S; -Q -A']);
[U,T]=NR_ReorderSchur(U,T,'lhp');  X=NR_GaussPP(U(1:n,1:n)',U(n+1:2*n,1:n)',n);
end % function NR_CARE

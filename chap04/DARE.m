function X=NR_DARE(F,S,Q,n)
% function X=NR_DARE(F,S,Q,n)
% Finds the X that satisfies X = F' X (I+ S X)^{-1} F + Q, with Q>=0, S>=0, and |F|<>0.
% This code uses an approach based on an ordered NR_Schur decomposition.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.4.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_CALE, NR_CARE, NR_DALE, NR_RDE, NR_DAREdoubling. Depends on NR_Schur, NR_ReorderSchur, NR_GaussPP.
% Verify with NR_DAREtest.

E=inv(F'); [U,T]=NR_Schur([F+S*E*Q -S*E; -E*Q E]); [U,T]=NR_ReorderSchur(U,T,'unitdisk');
X=NR_GaussPP(U(1:n,1:n)',U(n+1:2*n,1:n)',n);
end % function NR_DARE

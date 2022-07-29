function [U,T]=NR_Schur(U,type)
% function [U,T]=NR_Schur(U,type)
% A convenient wrapper routine for computing the NR_Schur decomposition
% of a matrix A of General (type='g'), Hermitian (type='h'), or Real (type='r') structure.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

if nargin==1, type='r'; end
switch type(1)
  case 'g', lam=NR_EigGeneral(U); case 'h', lam=NR_EigHermitian(U); case 'r', lam=NR_EigReal(U);
end; [U,T]=NR_ShiftedInversePower(U,lam); 
end % function NR_Schur

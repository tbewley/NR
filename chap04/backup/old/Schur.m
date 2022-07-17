function [U,T]=Schur(U,type)
% function [U,T]=Schur(U,type)
% A convenient wrapper routine for computing the Schur decomposition
% of a matrix A of General (type='g'), Hermitian (type='h'), or Real (type='r') structure.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

if nargin==1, type='r'; end
switch type(1)
  case 'g', lam=EigGeneral(U); case 'h', lam=EigHermitian(U); case 'r', lam=EigReal(U);
end; [U,T]=ShiftedInversePower(U,lam); 
end % function Schur

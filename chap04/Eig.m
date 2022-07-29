function [lam,S]=NR_Eig(S,type)
% function [lam,S]=NR_Eig(S,type)
% A convenient wrapper routine for computing the eigenvalues and eigenvectors
% of a matrix A of General (type='g'), Hermitian (type='h'), or Real (type='r') structure.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

if nargin==1, type='r'; end, switch type(1)
  case 'g', lam=NR_EigGeneral(S); case 'h', lam=NR_EigHermitian(S); case 'r', lam=NR_EigReal(S);
end, if nargout==2, [S]=NR_ShiftedInversePower(S,lam); end
end % function NR_Eig

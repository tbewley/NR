function [CM,r] = CtrbMatrix(A,B)
% function [CM,r] = CtrbMatrix(A,B)
% Compute the controllability matrix [B A*B A^2*B ... A^(n-1)*B] and its rank r.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Sections 20.5.1.1 and 20.5.3.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Verify with: <a href="matlab:help CtrbMatrixTest">CtrbMatrixTest</a>.

[n,ni]=size(B); CM=[B]; for i=1:n-1, CM=[CM A*CM(:,end-ni+1:end)]; end
if nargout>1; [U,S,V,r] = SVD(CM); end
end % function CtrbMatrix

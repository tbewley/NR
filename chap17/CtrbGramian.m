function [P,r] = CtrbGramian(A,B,MODE)
% function [P,r] = CtrbGramian(A,B,[MODE])
% Compute the controllability grammian P and its rank r of a Hurwitz state-space system.
% If MODE='CT' (default), A*P+P*A'+B*B'=0.  If MODE='DT', P=A*P*A'+B*B'.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Sections 20.5.1.2 and 20.5.3.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Verify with: <a href="matlab:help CtrbGramianTest">CtrbGramianTest</a>.

if nargin==2, MODE='CT'; end, if MODE=='CT', P=CALE(A,B*B'); else, P=DALE(A,B*B'); end
if A==real(A), P=real(P); end, if nargout>1; [U,S,V,r]=SVD(P); end
end % function CtrbGramian

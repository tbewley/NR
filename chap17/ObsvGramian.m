function [Q,r] = ObsvGramian(A,C,MODE)
% function [Q,r] = ObsvGramian(A,C,[MODE])
% Compute the observability grammian Q and its rank r of a Hurwitz state-space system.
% If MODE='CT' (default), A'*Q+Q*A +C'*C=0.  If MODE='DT', Q=A'*Q*A+C'*C.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Sections 20.5.2.2 and 20.5.4.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Verify with: <a href="matlab:help ObsvGramianTest">ObsvGramianTest</a>.

if nargin==2, MODE='CT'; end, if MODE=='CT', Q=CALE(A',C'*C); else, Q=DALE(A',C'*C); end
if A==real(A), Q=real(Q); end, if nargout>1; [U,S,V,r]=SVD(Q); end
end % function ObsvGramian

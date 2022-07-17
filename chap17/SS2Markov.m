function [m]=SS2Markov(A,B,C,D,p)
% function [m]=SS2Markov(A,B,C,D,p)
% Compute the first p Markov parameters of a CT or DT MIMO system in SS form.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Sections 20.3.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Verify with: <a href="matlab:help SS2MarkovTest">SS2MarkovTest</a>.

m(1,1)=D; for k=2:p, m(k,1)=C*A^(k-2)*B; end
end % function SS2Markov
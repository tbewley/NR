function [B] = GaussLU(Amod,B,n)
% function [B] = GaussLU(Amod,B,n)
% This function uses the LU decomposition returned (in the modified A matrix) by a prior
% call to Gauss.m to solve the system AX=B using forward and back substitution.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.2.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also Gauss. Verify with GaussTest.

for j = 2:n,
   B(j,:) = B(j,:) + Amod(j,1:j-1) * B(1:j-1,:);                  % FORWARD SUBSTITUTION
end
for i = n:-1:1,  
   B(i,:) = ( B(i,:) - Amod(i,i+1:n) * B(i+1:n,:) ) / Amod(i,i);  % BACK SUBSTITUTION
end
end % function GaussLU

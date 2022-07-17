function [G] = ThomasLU(a,b,c,G,n)
% function [G] = ThomasLU(a,b,c,G,n)
% This function uses the LU decomposition returned [in the modified (a,b,c) vectors] by a
% prior call to Thomas.m to solve the system AX=G using forward / back substitution.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also Thomas. Verify with ThomasTest.

for j = 1:n-1,
   G(j+1,:) = G(j+1,:) + a(j+1)*G(j,:);                     % FORWARD SUBSTITUTION
end                                  
G(n,:) = G(n,:) / b(n);
for i = n-1:-1:1,
   G(i,:) = ( G(i,:) - c(i) * G(i+1,:) ) / b(i);            % BACK SUBSTITUTION
end
end % function ThomasLU

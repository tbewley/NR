function [G] = CirculantLU(a,b,c,d,e,G,n)
% function [G] = CirculantLU(a,b,c,d,e,G,n)
% This function uses the LU decomposition returned [in the (a,b,c,d,e) vectors] by a
% prior call to Circulant.m to solve the system AX=G using forward / back substitution.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also Circulant. Verify with CirculantTest.

for j = 1:n-1,
   G(j+1,:) = G(j+1,:) + a(j+1)*G(j,:);                     % FORWARD SUBSTITUTION
   G(n,:)   = G(n,:) + e(j)*G(j,:);
end                                  
G(n,:) = G(n,:) - e(n-1) * G(n-1,:);       
G(n,:) = G(n,:) / b(n);                                     % BACK SUBSTITUTION
G(n-1,:) = ( G(n-1,:) - d(n-1) * G(n,:) ) / b(n-1);
for i = n-2:-1:1,
   G(i,:) = ( G(i,:) - c(i) * G(i+1,:) - d(i) * G(n,:) ) / b(i);
end
end % function CirculantLU

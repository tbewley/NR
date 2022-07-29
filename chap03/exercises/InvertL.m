function [L] = NR_InvertL(L,n)
% function [L] = InvertL(L,n)
% This function computes the inverse of a lower-triangular matrix via forward substitution.
% Numerical Renaissance Codebase 1.0, Chapter 2; see text for copyleft info.

for k = 1:n,
   L(k,k)=1/L(k,k);    
   for i=k+1:n
	  L(i,k) = - L(i,k:i-1) * L(k:i-1,k) / L(i,i);          % --- FORWARD SUNR_BSTITUTION ---
   end
end
end % function NR_InvertL.m

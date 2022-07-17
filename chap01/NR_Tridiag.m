function [A]=NR_Tridiag(a,b,c)
% function [A]=NR_Tridiag(a,b,c)
% Construct a tridiagonal circulant matrix from the vectors {a,b,c}.
% INPUT:  {a,b,c} =vectors defining the extended first subdiagonal, the main diagonal, and
%                  the extended first superdiagonal.
% OUTPUT: A       =tridiagonal circulant matrix sought.
% NOTE: If the first element of a is zero and the last element of b is set to zero,
%       the matrix generated will be tridiagonal
% EXAMPLE: n=7; a=randn(n,1); b=randn(n,1); c=randn(n,1);  % Define three random vectors
%          A=NR_Tridiag(a,b,c)                                % This A is tridiagonal circulant
%          A=NR_Tridiag([0; a(2:n)], b, [c(1:n-1); 0])     % This A is tridiagonal
% Numerical Renaissance codebase, Chapter 1, https://github.com/tbewley/NR
% Copyright 2021 by Thomas Bewley, distributed under BSD 3-Clause License. 

n=length(b); A=diag(a(2:n),-1)+diag(b,0)+diag(c(1:n-1),1); A(1,n)=a(1); A(n,1)=c(n);
end % function TriDiag

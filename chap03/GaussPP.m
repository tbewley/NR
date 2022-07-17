function [B,A,p] = GaussPP(A,B,n)
% function [B,A,p] = GaussPP(A,B,n)
% This function solves AX=B for X using Gaussian elimination with partial pivoting.
% The matrix B is replaced by the solution X on exit, and (if requested) the matrix A
% is replaced by m_ij and U on exit, with the vector of pivots returned in p.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.2.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also GaussPLU. Verify with GaussPPTest, Example_2_1.

p=[1:n]';                                     % initialize permutation vector
for j = 1:n-1,                                % FORWARD SWEEP
   [amax,imax]=max(abs(A(j:n,j)));            % Find the largest element in the column.
   if amax > abs(A(j,j))                      % If necessary, exchange the rows of A along
      A([j j-1+imax],:)=A([j-1+imax j],:);    % with the rows of the previously-determined
      B([j j-1+imax],:)=B([j-1+imax j],:);    % m_ij (stored in the subdiagonal elements
      p([j j-1+imax])  =p([j-1+imax j]);      % of A), the rows of the RHS matrix B, and
   end                                        % the rows of the permutation vector p.
% --- THE REMAINDER OF THIS FUNCTION IS IDENTICAL TO Gauss.m ---
% ...
   A(j+1:n,j)     = - A(j+1:n,j) / A(j,j);
   A(j+1:n,j+1:n) = A(j+1:n,j+1:n) + A(j+1:n,j) * A(j,j+1:n);   % Outer product update
   B(j+1:n,:)     = B(j+1:n,:)     + A(j+1:n,j) * B(j,:);
end
for i = n:-1:1,                                                 % BACK SUBSTITUTION
   B(i,:) = ( B(i,:) - A(i,i+1:n) * B(i+1:n,:) ) / A(i,i);      % Inner product update
end
end % function GaussPP

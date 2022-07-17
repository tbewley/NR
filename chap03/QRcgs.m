function [A,R] = QRcgs(A,s)
% function [A,R] = QRcgs(A,s)
% Compute a reduced QR decomposition A=Q*R of an mxn matrix A via Classical Gram-Schmidt.
% Pivoting is NOT implemented; redundant columns of A are simply set to zero.
% If s is specified, the first s columns are skipped (assumed to already be orthogonal).
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

[m,n]=size(A);  R=eye(n,n); if nargin==1, s=0; end
for i=s+1:n
  R(1:i-1,i)=A(:,1:i-1)'*A(:,i);       A(:,i)=A(:,i)-A(:,1:i-1)*R(1:i-1,i);
  R(i,i)=norm(A(:,i)); if R(i,i)>1e-9, A(:,i)=A(:,i)/R(i,i); else, A(:,i)=zeros(m,1); end
end                                    % Note: Q is returned in the modified A.
end % function QRcgs

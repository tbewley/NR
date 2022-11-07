function [A,Q,pi,r] = QRHouseholder(A)
% function [A,Q,pi,r] = QRHouseholder(A)
% Compute a (full) QR decomposition A=Q*R of ANY mxn matrix A using a sequence of
% Householder reflections (R is returned in the modified A).  IF pi and r are
% requested, then pivoting is implemented and the decomposition is ordered, A*Pi=Q*R.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Depends on <a href="matlab:help ReflectCompute">ReflectCompute</a>, <a href="matlab:help Reflect">Reflect</a>.

[m,n]=size(A); pi=[1:n]'; tol=1e-8; Q=eye(m,m);
for i=1:min(n,m-1)
  if nargout>2, for j=i:n, length(j)=norm(A(i:end,j)); end; [amax,imax]=max(length);
    if amax>length(i),  A(:,[i imax])=A(:,[imax i]);  pi([i imax])=pi([imax i]);  end
  clear length, end  
  [sig,w]=ReflectCompute(A(i:m,i)); A=Reflect(A,sig,w,i,m,i,n,'L');
  Q=Reflect(Q,sig,w,i,m,1,m,'R');
end
if nargout>2, r=min(m,n); for i=1:r, if abs(A(i,i))<tol, r=i-1; break, end, end, end
end % function QRHouseholder

function [A,Q] = QRFastGivensHessenberg(A) 
% function [A,Q] = QRFastGivensHessenberg(A) 
% Compute a QR decomposition A=QR by applying a sequence of min(n,m-1) fast Givens
% transforms to an mxn upper Hessenberg matrix A to reduce it to upper triangular form.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.3.4.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Depends on <a href="matlab:help FastGivensCompute">FastGivensCompute</a>, <a href="matlab:help FastGivens">FastGivens</a>.

[m,n]=size(A);  Q=eye(m,m); d=ones(m,1);
for i=1:min(n,m-1)
  [a,b,gamma,donothing,d([i i+1])]=FastGivensCompute(A(i,i),A(i+1,i),d(i),d(i+1));
  [A]=FastGivens(A,a,b,gamma,donothing,i,i+1,i,n,'L');
  [Q]=FastGivens(Q,a,b,gamma,donothing,i,i+1,1,m,'R');
end
for i=1:m,  dt=1/sqrt(d(i));  Q(:,i)=Q(:,i)*dt;  A(i,:)=A(i,:)*dt;  end 
end % function QRFastGivensHessenberg

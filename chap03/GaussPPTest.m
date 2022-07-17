% script <a href="matlab:GaussPPTest">GaussPPTest</a>
% Test <a href="matlab:help GaussPP">GaussPP</a> and <a href="matlab:help GaussPLU">GaussPLU</a> on a random matrix.
% This test script is NOT efficient, and is meant for TESTING PURPOSES ONLY.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.2.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also InvTest, GaussTest, GaussCPTest, GaussEchelonTest.

disp('Now testing GaussPP & GaussPLU on a random matrix.')
n=5; m=2; % note that m is the number of RHS vectors
A=randn(n); A(1,1)=0;  % Note: Gauss.m would fail on this matrix!  [See GaussTest.m...]
B=randn(n,m); [X,Amod,p]=GaussPP(A,B,n);
A_times_X_from_GaussPP=A*X, B, error=norm(A*X-B)

Bnew=randn(n,m); [Xnew]=GaussPLU(Amod,Bnew,p,n);
A_times_Xnew_from_GaussPLU=A*Xnew, Bnew, error=norm(A*Xnew-Bnew)

P=zeros(n); for k=1:n, P(p(k),k)=1; end
L=eye(n);   for i=2:n, for j=1:i-1, L(i,j)=-Amod(i,j); end, end
U=zeros(n); for i=1:n, for j=i:n,   U(i,j)= Amod(i,j); end, end
P, L, U, error=norm(A-P*L*U), disp(' ')

% end script GaussPPTest

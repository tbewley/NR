% script <a href="matlab:GaussTest">GaussTest</a>
% Test <a href="matlab:help Gauss">Gauss</a> and <a href="matlab:help GaussLU">GaussLU</a> on a random matrix.
% Note that this test script is NOT efficient, and is meant for TESTING PURPOSES ONLY.
% Any production code leveraging the Gauss and GaussLU codes should not save the
% modified A matrix in a new storage location (rather, it should simply overwrite A);
% also, a production code need not extract L and U out separately - note that the
% GaussLU code solves Ly=b for y, then Ux=y for x, referencing the nontrivial elements
% of L and U as they sit in the modified A matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.2.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also GaussPPTest, GaussCPTest, GaussEchelonTest.

disp('Now testing Gauss & GaussLU on a random matrix.')
n=5; m=2;  % note: m is the number of RHS vectors
A=randn(n);

% Note! Gauss.m usually works fine on randomly-generated full matrices, but will fail
% if it encounters a zero pivot.  Uncomment the following line to see it fail.
% A(1,1)=0;

B=randn(n,m); [X,Amod]=Gauss(A,B,n);
A_times_X_from_Gauss=A*X, B, error=norm(A*X-B)

Bnew=randn(n,m); [Xnew]=GaussLU(Amod,Bnew,n);
A_times_Xnew_from_GaussLU=A*Xnew, Bnew, error=norm(A*Xnew-Bnew)

L=eye(n);   for i=2:n, for j=1:i-1, L(i,j)=-Amod(i,j); end, end
U=zeros(n); for i=1:n, for j=i:n,   U(i,j)= Amod(i,j); end, end
L, U, error=norm(A-L*U), disp(' ')

% end script GaussTest

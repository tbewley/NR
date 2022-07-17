% Test script for EigHermitianImplicitTest.m         % Numerical Renaissance Codebase 1.0
clear; n=100; A=randn(n)+sqrt(-1)*randn(n); A=A*A'; lam=EigHermitianImplicit(A,n)
S=ShiftedInversePower(A,lam);  eig_error=norm(A*S-S*diag(lam))
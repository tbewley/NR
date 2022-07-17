% Test script for EigHermitianImplicitTest.m
clear; n=100; A=randn(n)+sqrt(-1)*randn(n); A=A*A'; lam=EigHermitianImplicit(A,n)
S=ShiftedInversePower(A,lam);  eig_error=norm(A*S-S*diag(lam))
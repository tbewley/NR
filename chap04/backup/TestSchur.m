% script NR_TestSchur
% Test the NR_Schur decomposition codes 
% Remove various semicolons to print stuff to screen along the way, or leave the
% semicolons in and change N to try larger matrices.

disp('Now initializing a random complex square NxN matrix');
N=4;
A=randn(4)+i*randn(4);
disp('Now testing NR_SchurGeneral, and comparing with the Matlab eig routine');
[T,U]=NR_SchurGeneral(A); U*T*U'-A, diag(T), eig(A)
lambda=NR_SchurGeneral(A), eig(A)

% end script NR_TestSchur.m

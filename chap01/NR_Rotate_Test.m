% script NR_Rotate_Test
% Test NR_Rotate_Compute & NR_Rotate on a random matrix.
% Numerical Renaissance codebase, Chapter 1, https://github.com/tbewley/NR
% Copyright 2021 by Thomas Bewley, distributed under BSD 3-Clause License. 

disp('Now testing NR_Rotate_Compute & NR_Rotate on a random matrix.')
A=randn(4)+sqrt(-1)*randn(4); A=A*A'

disp('This test takes i=2 and k=3 and which=B, so it only modifies the')
disp('second and third rows, and the second and third columns, of A.')
disp('The rotation is designed to drive the (3,1) element of A to zero.')
[c,s]=NR_Rotate_Compute(A(2,1),A(3,1));
[X_from_Rotate]=NR_Rotate(A,c,s,2,3,1,4,'B'), disp(' ')

% end script NR_Rotate_Test
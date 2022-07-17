% script NR_Fast_Givens_Test
% Tests NR_Fast_Givens_Compute & NR_Fast_Givens on a random matrix.
% Numerical Renaissance codebase, Chapter 1, https://github.com/tbewley/NR
% Copyright 2021 by Thomas Bewley, distributed under BSD 3-Clause License. 

NR_Rotate_Test
disp('Now testing NR_Fast_Givens_Compute & NR_Fast_Givens on the same matrix.'),  d=ones(4,1);
[a,b,gamma,donothing,d([2 3])]=NR_Fast_Givens_Compute(A(2,1),A(3,1),d(2),d(3));
[X_from_FastGivens]=NR_Fast_Givens(A,a,b,gamma,donothing,2,3,1,4,'B'); scaling=diag(1./sqrt(d));
X_from_FastGivens_Scaled=scaling*X_from_FastGivens*scaling, disp(' ')
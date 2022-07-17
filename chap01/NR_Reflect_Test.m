% script NR_Reflect_Test
% Tests NR_Reflect_Compute and NR_Reflect on random real and complex matrices.
% Numerical Renaissance codebase, Chapter 1, https://github.com/tbewley/NR
% Copyright 2021 by Thomas Bewley, distributed under BSD 3-Clause License. 

disp('Now testing NR_Reflect_Compute & NR_Reflect on a couple of random matrices.')

A_real=randn(4)
[sig,w]=NR_Reflect_Compute(A_real(:,1))
[X_from_Reflect]=NR_Reflect(A_real,sig,w,1,4,1,4,'L'), disp(' ')

A_complex=randn(4)+sqrt(-1)*randn(4)
[sig,w]=NR_Reflect_Compute(A_complex(:,1))
[X_from_Reflect]=NR_Reflect(A_complex,sig,w,1,4,1,4,'L'), disp(' ')
% script <a href="matlab:NR_NN_Test">NR_NN_Test</a>
% Test the convergence of the neural network algorithm based on some random training data.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_NN_BackPropagate, NR_NN_ComputeCost, NR_NN_ForwardPropagate, NR_NN_SequentialTrain.

clear, in=60; out=1; h=2;
n(1)=in; n(2)=100; n(3)=20; n(4)=out; for k=1:h+1; w{k}=10^(-1)*randn(n(k+1),n(k)); end
N=200; y=rand(in,N); u=rand(out,N); [w]=NR_NN_SequentialTrain(0.1,99,y,u,N,w,h,n);
% end script NR_NN_Test

% script <a href="matlab:NN_Test">NN_Test</a>
% Test the convergence of the neural network algorithm based on some random training data.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.5.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NN_BackPropagate, NN_ComputeCost, NN_ForwardPropagate, NN_SequentialTrain.

clear, in=60; out=1; h=2;
n(1)=in; n(2)=100; n(3)=20; n(4)=out; for k=1:h+1; w{k}=10^(-1)*randn(n(k+1),n(k)); end
N=200; y=rand(in,N); u=rand(out,N); [w]=NN_SequentialTrain(0.1,99,y,u,N,w,h,n);
% end script NN_Test

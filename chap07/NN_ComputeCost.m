function [J]=NN_ComputeCost(y,u,N,w,h,n)
% function [J]=NN_ComputeCost(y,u,N,w,h,n)
% Compute the mean-square error over the training set used to train a neural network.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.5.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NN_BackPropagate, NN_ForwardPropagate, NN_SequentialTrain.  Verify with NN_Test.

J=0; for d=1:N;
  x=NN_ForwardPropagate(y(:,d),w,h,n); J=J+(0.5/N)*norm(x{h+2}-u(:,d));
end
end % function NN_ComputeCost

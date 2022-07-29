function [J]=NR_NN_ComputeCost(y,u,N,w,h,n)
% function [J]=NR_NN_ComputeCost(y,u,N,w,h,n)
% Compute the mean-square error over the training set used to train a neural network.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_NN_BackPropagate, NR_NN_ForwardPropagate, NR_NN_SequentialTrain.  Verify with NR_NN_Test.

J=0; for d=1:N;
  x=NR_NN_ForwardPropagate(y(:,d),w,h,n); J=J+(0.5/N)*norm(x{h+2}-u(:,d));
end
end % function NR_NN_ComputeCost

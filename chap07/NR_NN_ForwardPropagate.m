function [x]=NR_NN_ForwardPropagate(y,w,h,n)
% function [x]=NR_NN_ForwardPropagate(y,w,h,n)
% Given the input y and the weights w of a neural network with h hidden layers and n(k)
% nodes per layer, compute the state x of the entire network, including the output x{h+2}.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_NN_BackPropagate, NR_NN_ComputeCost, NR_NN_SequentialTrain.  Verify with NR_NN_Test.

x{1}=y; for k=2:h+2, for i=1:n(k), x{k}(i,1)=tanh(w{k-1}(i,:)*x{k-1}(:)); end, end
end % function NR_NN_ForwardPropagate

function [x]=NN_ForwardPropagate(y,w,h,n)
% function [x]=NN_ForwardPropagate(y,w,h,n)
% Given the input y and the weights w of a neural network with h hidden layers and n(k)
% nodes per layer, compute the state x of the entire network, including the output x{h+2}.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.5.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NN_BackPropagate, NN_ComputeCost, NN_SequentialTrain.  Verify with NN_Test.

x{1}=y; for k=2:h+2, for i=1:n(k), x{k}(i,1)=tanh(w{k-1}(i,:)*x{k-1}(:)); end, end
end % function NN_ForwardPropagate

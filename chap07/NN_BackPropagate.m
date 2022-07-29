function [g]=NR_NN_BackPropagate(e,x,w,h,n)               
% function [g]=NR_NN_BackPropagate(e,x,w,h,n)
% Compute the gradient g with respect to the weights w based on the output error e=u-v in
% a neural network with state x (computed using NR_NN_ForwardPropagate).
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_NN_ForwardPropagate, NR_NN_ComputeCost, NR_NN_SequentialTrain.  Verify with NR_NN_Test.

x{h+2}(:)=e; for k=h+1:-1:1
  x{k+1}(:)=x{k+1}(:).*(sech(w{k}(:,:)*x{k}(:))).^2;
  for i=1:n(k), g{k}(:,i)=x{k+1}(:)*x{k}(i); end          % Compute g{k} = d J_k / d w
  if k>1, for i=1:n(k), x{k}(i,1)=(x{k+1}(:))'*(w{k}(:,i)); end, end
end
end % function NR_NN_BackPropagate

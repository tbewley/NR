function [g]=NN_BackPropagate(e,x,w,h,n)               
% function [g]=NN_BackPropagate(e,x,w,h,n)
% Compute the gradient g with respect to the weights w based on the output error e=u-v in
% a neural network with state x (computed using NN_ForwardPropagate).
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.5.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NN_ForwardPropagate, NN_ComputeCost, NN_SequentialTrain.  Verify with NN_Test.

x{h+2}(:)=e; for k=h+1:-1:1
  x{k+1}(:)=x{k+1}(:).*(sech(w{k}(:,:)*x{k}(:))).^2;
  for i=1:n(k), g{k}(:,i)=x{k+1}(:)*x{k}(i); end          % Compute g{k} = d J_k / d w
  if k>1, for i=1:n(k), x{k}(i,1)=(x{k+1}(:))'*(w{k}(:,i)); end, end
end
end % function NN_BackPropagate

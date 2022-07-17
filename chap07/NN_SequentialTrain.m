function [w]=NN_SequentialTrain(alpha,max_iters,y,u,N,w,h,n)
% function [w]=NN_SequentialTrain(alpha,max_iters,y,u,N,w,h,n)
% Cycle through each training record k one at a time, and perform a fixed-coefficient step
% in the downhill direction a small amount at each iteration based on g{k} = d J_k / d w.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.5.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NN_BackPropagate, NN_ForwardPropagate, NN_ComputeCost.  Verify with NN_Test.

Jsave(1)=NN_ComputeCost(y,u,N,w,h,n);
for iter=1:max_iters
  for d=1:N
    x=NN_ForwardPropagate(y(:,d),w,h,n); g=NN_BackPropagate(x{h+2}(:)-u(:,d),x,w,h,n);
    for k=1:h+1, w{k}=w{k}-alpha*g{k}; end
  end
  Jsave(iter+1)=NN_ComputeCost(y,u,N,w,h,n); plot(Jsave); pause(0.001)
end
end % function NN_SequentialTrain

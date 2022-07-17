function [u] = NN_SequentialTrain(alpha,iterm,u)     % Numerical Renaissance Codebase 1.0
global x xin xout dm km n
Jsave(1,1)=NN_ComputeCost(u);
for iter=1:iterm, for d=1:dm
  NN_ForwardPropogate(d,u); for k=1:km-1; g{k}=u{k}*0; end; g=NN_BackPropagate(d,u,g);
  for k=1:km-1; u{k}=u{k}-alpha*g{k}; end
end, Jsave(iter+1,1)=NN_ComputeCost(u); end;  plot(Jsave)
end % function NN_SequentialTrain
function [g] = NN_ComputeGradient(u)
% function [g]=NN_ComputeGradient(d,u,g)
% ??? 
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.5.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_NN_BackPropagate, NR_NN_ComputeCost, NR_NN_ForwardPropagate, NR_NN_SequentialTrain.
% Verify with NR_NN_Test.

global x xin xout dm km n
g=u*0; for d=1:dm; x=NR_NN_ForwardPropagate(d,u); g=g+NN_BackPropogate(d,u,g); end
end % function NN_ComputeGradient

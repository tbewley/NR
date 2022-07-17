function [g] = NN_ComputeGradient(u)
% function [g]=NN_ComputeGradient(d,u,g)
% ??? 
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.5.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NN_BackPropagate, NN_ComputeCost, NN_ForwardPropagate, NN_SequentialTrain.
% Verify with NN_Test.

global x xin xout dm km n
g=u*0; for d=1:dm; x=NN_ForwardPropagate(d,u); g=g+NN_BackPropogate(d,u,g); end
end % function NN_ComputeGradient

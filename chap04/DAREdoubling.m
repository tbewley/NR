function Q=NR_DAREdoubling(F,S,Q,n,steps)
% function X=NR_DAREdoubling(F,S,Q,n,steps)
% Finds the X that satisfies X = F' X (I+ S X)^{-1} F + Q, with Q>=0, S>=0. 
% This code uses an elegant and efficient approach known as the doubling algorithm.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.4.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_CALE, NR_CARE, NR_DALE, NR_DARE, NR_RDE.  Verify with NR_DAREtest.

for iter=1:steps
  E=inv(eye(n)+Q*S); Fnew=F*E'*F; Qnew=Q+F'*E*Q*F; S=S+F*S*E*F'; F=Fnew; Q=Qnew;
end
end % function NR_DAREdoubling

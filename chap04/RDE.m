function X=RDE(X,F,S,Q,n,steps)
% function X=RDE(X,F,S,Q,n,steps)
% March the RDE X_{k-1} = F' X_k (I+ S X_k)^{-1} F + Q a given number of steps.
% See <a href="matlab:web('http://numerical-renaissance.com')">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.4.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

for iter=1:steps; X=F'*X*GaussPP(eye(n)+S*X,F,n)+Q; end
end % function RDE

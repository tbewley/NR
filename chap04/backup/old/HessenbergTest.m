% script NR_HessenbergTest
% Test NR_Hessenberg.m on a random matrix.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

A=rand(8), [T,V]=NR_Hessenberg(A), error=norm(A-V*T*V')

% end script NR_HessenbergTest

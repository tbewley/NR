% script Example_2_1
% Computes the static loads in the three-story building considered in Example 2.1 of NR. 
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.2.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Depends on <a href="matlab:help GaussPP">GaussPP</a>.

disp('Now computing the static loads in the three-story building of Example 2.1 of NR.')
a=1/sqrt(2); m=1000; g=9.8;
A = [
0  0  0  0  1  0  0  0  0  0  0 -a;
0  0  0  0  0  1  0  0  0  0  0  0;
0  0  1  0 -1  0  0  0  0  0 -a  0;
0  0  0  1  0 -1  0  0  0  0  0  a;
1  0 -1  0  0  0  0  0  0 -a  0  0;
0  1  0 -1  0  0  0  0  0  0  a  0;
0  0  0  0  0  0  0  0 -1  0  0  a;
0  0  0  0  0  0  0  0  1  0  0  0;
0  0  0  0  0  0  0 -1  0  0  a  0;
0  0  0  0  0  0  0  1  0  0  0 -a;
0  0  0  0  0  0 -1  0  0  a  0  0;
0  0  0  0  0  0  1  0  0  0 -a  0];
c=m*g/2; d=a*1000; b=[c;c+d;c-d;c+d;c-d;c+d;0;d;-d;d;-d;d];
format long g; forces=GaussPP(A,b,12), format short, disp(' ')

% end script Example_2_1.m

% script <a href="matlab:SS2TFTest">SS2TFTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.1.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

n=4; ni=2; no=3; A=randn(n); B=randn(n,ni); C=randn(no,n); D=randn(no,ni);
disp('Initial continuous-time system {A,B,C,D}:'), ShowSys(A,B,C,D); disp(' ')

disp('Reduce to a SISO problem, and compare with Matlab''s built-in function.')
[b_NR_SISO,a_NR]        =SS2TF(A,B(:,1),C(1,:),D(1,1)), b_size_SISO=size(b_NR_SISO)
[b_Matlab_SISO,a_Matlab]=ss2tf(A,B(:,1),C(1,:),D(1,1)), disp(' '), pause

disp('Reduce to a SIMO problem, and compare with Matlab''s built-in function.')
[b_NR_SIMO,a_NR]        =SS2TF(A,B(:,1),C,D(:,1)), b_size_SIMO=size(b_NR_SIMO)
[b_Matlab_SIMO,a_Matlab]=ss2tf(A,B(:,1),C,D(:,1)), disp(' '), pause;

disp('Reduce to a MISO problem, which Matlab''s built-in functions can''t handle.')
[b_NR_MISO,a_NR]=SS2TF(A,B,C(1,:),D(1,:));  b_size_MISO=size(b_NR_MISO)
for j=1:b_size_MISO(2), disp(sprintf('b_NR_MISO(:,%d,:)',j))
  for i=1:b_size_MISO(1), disp(reshape(b_NR_MISO(i,j,:),1,b_size_MISO(3))), end
end, a_NR, disp(' '), pause

disp('Test the full MIMO problem, which Matlab''s built-in functions can''t handle.')
[b_NR_MIMO,a_NR]=SS2TF(A,B,C,D);           b_size_MIMO=size(b_NR_MIMO)
for j=1:b_size_MIMO(2), disp(sprintf('b_NR_MIMO(:,%d,:)',j))
  for i=1:b_size_MIMO(1), disp(reshape(b_NR_MIMO(i,j,:),1,b_size_MIMO(3))), end
end, a_NR

disp(' '); disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:MaxEnergyGrowthTest">MaxEnergyGrowthTest</a>'), disp(' ')
% end script SS2TFTest

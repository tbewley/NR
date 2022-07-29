% script <a href="matlab:NR_MaxEnergyGrowthTest">NR_MaxEnergyGrowthTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.1.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear; n=4; Q=rand(n); Q=Q*Q';

R=randn(n); S=randn(n); A=-R*R'+S-S', tau=1,
disp('NR_Eigenvalues of A (note: stable system with eigenvalues in LHP)');
disp(NR_Eig(A,'r')), [thetamax,x0]=NR_MaxEnergyGrowth(A,Q,tau,'CT')
xtau=NR_MatrixExponential(A,tau)*x0; E0=x0'*Q*x0, Etau=xtau'*Q*xtau, disp(' '), pause

F=randn(n); F=0.95*F/max(abs(NR_Eig(F,'r'))), m=8,
disp('NR_Eigenvalues of F (note: stable system with eigenvalues in unit circle)');
disp(NR_Eig(F,'r')), [thetamax,x0]=NR_MaxEnergyGrowth(F,Q,m,'DT')
xm=F^m*x0; E0=x0'*Q*x0, Em=xm'*Q*xm, disp(' ')

disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:NR_TFnormTest">NR_TFnormTest</a>'), disp(' ')
% end script NR_MaxEnergyGrowthTest

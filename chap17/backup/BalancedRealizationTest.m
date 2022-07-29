% script <a href="matlab:NR_BalancedRealizationTest">NR_BalancedRealizationTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.6.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear, disp(' '), n=4; ni=1; no=1;
R=randn(n); S=randn(n); A=-R*R'+S-S'; B=randn(n,ni); C=randn(no,n);
disp('Initial continuous-time system {A,B,C,D}:'), NR_ShowSys(A,B,C)
disp('NR_Eigenvalues of A (need to be in LHP!)'); disp(NR_Eig(A))
[Ab,Bb,Cb,HankelSingularValues]=NR_BalancedRealization(A,B,C,'CT');
disp('Balanced realization {Ab,Bb,Cb,Db}:'), NR_ShowSys(Ab,Bb,Cb)
disp('Hankel singular values:'), disp(HankelSingularValues') 
ControllabilityGrammian=NR_CtrbGrammian(Ab,Bb,'CT')
ObservabilityGrammian=NR_ObsvGrammian(Ab,Cb,'CT'), pause

disp(' '), F=randn(n); F=0.95*F/max(abs(NR_Eig(F,'r'))); G=randn(n,ni); H=randn(no,n);
disp('Initial discrete-time system {F,G,H,D}:'), NR_ShowSys(A,B,C)
disp('NR_Eigenvalues of F (need to be inside unit circle!)'); disp(NR_Eig(F,'r'))
[Fb,Gb,Hb,HankelSingularValues]=NR_BalancedRealization(F,G,H,'DT');
disp('Balanced realization {Fb,Gb,Hb,D}:'), NR_ShowSys(Fb,Bb,Cb)
disp('Hankel singular values:'), disp(HankelSingularValues') 
ControllabilityGrammian=NR_CtrbGrammian(Fb,Gb,'DT')
ObservabilityGrammian=NR_ObsvGrammian(Fb,Hb,'DT')

% end script NR_BalancedRealizationTest
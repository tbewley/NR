% script <a href="matlab:BalancedRealizationTest">BalancedRealizationTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.6.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear, disp(' '), n=4; ni=1; no=1;
R=randn(n); S=randn(n); A=-R*R'+S-S'; B=randn(n,ni); C=randn(no,n);
disp('Initial continuous-time system {A,B,C,D}:'), ShowSys(A,B,C)
disp('Eigenvalues of A (need to be in LHP!)'); disp(Eig(A))
[Ab,Bb,Cb,HankelSingularValues]=BalancedRealization(A,B,C,'CT');
disp('Balanced realization {Ab,Bb,Cb,Db}:'), ShowSys(Ab,Bb,Cb)
disp('Hankel singular values:'), disp(HankelSingularValues') 
ControllabilityGrammian=CtrbGrammian(Ab,Bb,'CT')
ObservabilityGrammian=ObsvGrammian(Ab,Cb,'CT'), pause

disp(' '), F=randn(n); F=0.95*F/max(abs(Eig(F,'r'))); G=randn(n,ni); H=randn(no,n);
disp('Initial discrete-time system {F,G,H,D}:'), ShowSys(A,B,C)
disp('Eigenvalues of F (need to be inside unit circle!)'); disp(Eig(F,'r'))
[Fb,Gb,Hb,HankelSingularValues]=BalancedRealization(F,G,H,'DT');
disp('Balanced realization {Fb,Gb,Hb,D}:'), ShowSys(Fb,Bb,Cb)
disp('Hankel singular values:'), disp(HankelSingularValues') 
ControllabilityGrammian=CtrbGrammian(Fb,Gb,'DT')
ObservabilityGrammian=ObsvGrammian(Fb,Hb,'DT')

% end script BalancedRealizationTest
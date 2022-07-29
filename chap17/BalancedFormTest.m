% script <a href="matlab:NR_BalancedFormTest">NR_BalancedFormTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 20.6.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear, n=8; ni=1; no=1;
R=randn(n); S=randn(n); A=-R*R'+S-S'; B=randn(n,ni); C=randn(no,n); D=randn(no,ni);
disp('Initial continuous-time system {A,B,C,D}:'), NR_ShowSys(A,B,C,D)
disp('NR_Eigenvalues of A (need to be in LHP!)'); disp(NR_Eig(A))
[Ab,Bb,Cb,HankelSingularValues]=NR_BalancedForm(A,B,C,'CT');
disp('Balanced realization {Ab,Bb,Cb,Db}:'), NR_ShowSys(Ab,Bb,Cb,D)
disp('Hankel singular values:'), disp(HankelSingularValues') 
ControllabilityGramian=NR_CtrbGramian(Ab,Bb,'CT')
ObservabilityGramian=NR_ObsvGramian(Ab,Cb,'CT'),

g.omega=logspace(-1,3,500); g.line=0;
disp('NR_Eigenvalues of A balanced'); disp(NR_Eig(Ab))
[numb,denb]=NR_SS2TF(Ab,Bb,Cb);
figure(1);  clf; g.style='b-';  Bode(numb,denb,g);  hold on; disp(' '),
pause

nt=4; Abt=Ab(1:nt,1:nt); Bbt=Bb(1:nt,:); Cbt=Cb(:,1:nt); Dbt=D;
disp('Truncation of balanced realization:'), NR_ShowSys(Abt,Bbt,Cbt,Dbt)
ControllabilityGramian=NR_CtrbGramian(Abt,Bbt,'CT')
ObservabilityGramian=NR_ObsvGramian(Abt,Cbt,'CT'),

disp('NR_Eigenvalues of A balanced and truncated'); disp(NR_Eig(Abt))
[numbt,denbt]=NR_SS2TF(Abt,Bbt,Cbt);
figure(1); g.style='r-'; Bode(numbt,denbt,g); disp(' '),
pause

F=randn(n); F=0.95*F/max(abs(NR_Eig(F,'r'))); G=randn(n,ni); H=randn(no,n);
disp('Initial discrete-time system {F,G,H,D}:'), NR_ShowSys(F,G,H,D)
disp('NR_Eigenvalues of F (need to be inside unit circle!)'); disp(NR_Eig(F,'r'))
[Fb,Gb,Hb,HankelSingularValues]=NR_BalancedForm(F,G,H,'DT');
disp('Balanced realization {Fb,Gb,Hb,D}:'), NR_ShowSys(Fb,Gb,Hb,D)
disp('Hankel singular values:'), disp(HankelSingularValues') 
ControllabilityGramian=NR_CtrbGramian(Fb,Gb,'DT')
ObservabilityGramian=NR_ObsvGramian(Fb,Hb,'DT'), disp(' '), pause

nt=n-1; Fbt=Fb(1:nt,1:nt); Gbt=Gb(1:nt,:); Hbt=Hb(:,1:nt);
disp('Truncation of balanced realization:'), NR_ShowSys(Fbt,Gbt,Hbt,D)
ControllabilityGramian=NR_CtrbGramian(Fbt,Gbt,'DT')
ObservabilityGramian=NR_ObsvGramian(Fbt,Hbt,'DT')
disp('Note: the truncated system is well balanced (with diagonal grammians) iff there')
disp('is a big gap between the truncated and retained Hankel singular values.'), disp(' ')
disp('Return to the main <a href="matlab:help NRchap20">NRchap20 help page</a>'), disp(' ')
% end script NR_BalancedFormTest
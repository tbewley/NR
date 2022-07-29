% script <a href="matlab:NR_ObsvGramianTest">NR_ObsvGramianTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Sections 20.5.2.2 and 20.5.4.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear, N=4; Nob=2; Ni=2; No=1; Nnob=N-Nob;
R1=randn(Nob); S1=randn(Nob); R2=randn(Nnob); S2=randn(Nnob);
A=[-R1*R1'+S1-S1' zeros(Nob,Nnob); ...
   randn(Nnob,Nob) -R2*R2'+S2-S2'];
B=randn(N,Ni); C=[randn(No,Nob) zeros(No,Nnob)];
disp(sprintf('Initial continuous-time system with %d observable modes:',Nob))
NR_ShowSys(A,B,C), disp('NR_Eigenvalues of A (need to be in LHP!)'); disp(NR_Eig(A,'r'))
[A,B,C]=NR_SSTransform(A,B,C,randn(N)); disp('Scramble this system:'), NR_ShowSys(A,B,C)
[Q,rob]=NR_ObsvGramian(A,C,'CT'), e=NR_Eig(Q,'h'); NR_Eigenvalues_of_Q=e(N:-1:1);
disp('Error (that is, norm of A''*Q+Q*A+C''*C):'), disp(norm(A'*Q+Q*A+C'*C)), pause

disp(' '), F1=randn(Nob); F2=randn(Nnob);
F=[0.95*F1/max(abs(NR_Eig(F1,'r'))) zeros(Nob,Nnob); ...
   randn(Nnob,Nob) 0.95*F2/max(abs(NR_Eig(F2,'r')))];
G=randn(N,Ni); H=[randn(No,Nob) zeros(No,Nob)];
disp(sprintf('Initial discrete-time system with %d controllable modes:',Nob))
NR_ShowSys(F,G,H), disp('NR_Eigenvalues of F (need to be inside unit circle!)'); disp(NR_Eig(F,'r'))
[F,G,H]=NR_SSTransform(F,G,H,randn(N)); disp('Scramble this system:'), NR_ShowSys(F,G,H)
[Q,rob]=NR_ObsvGramian(F,H,'DT'), e=NR_Eig(Q,'h'); NR_Eigenvalues_of_Q=e(N:-1:1);
disp('Error (that is, norm of Q-F''*Q*F-H''*H):'), disp(norm(Q-F'*Q*F-H'*H))

disp(' '); disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:NR_SS2CanonicalFormTest">NR_SS2CanonicalFormTest</a>'), disp(' ')
% end script NR_ObsvGramianTest
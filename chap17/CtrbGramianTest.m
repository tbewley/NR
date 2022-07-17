% script <a href="matlab:CtrbGramianTest">CtrbGramianTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Sections 20.5.1.2 and 20.5.3.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear, N=4; Nc=2; Ni=2; No=1; Nnc=N-Nc;
R1=randn(Nc); S1=randn(Nc); R2=randn(Nnc); S2=randn(Nnc);
A=[-R1*R1'+S1-S1' randn(Nc,Nnc); ...
   zeros(Nnc,Nc) -R2*R2'+S2-S2'];
B=[randn(Nc,Ni); zeros(Nnc,Ni)]; C=randn(No,N);
disp(sprintf('Initial continuous-time system with %d controllable modes:',Nc))
ShowSys(A,B,C), disp('Eigenvalues of A (need to be in LHP!)'); disp(Eig(A,'r'))
[A,B,C]=SSTransform(A,B,C,randn(N)); disp('Scramble this system:'), ShowSys(A,B,C)
[P,rc]=CtrbGramian(A,B,'CT'), e=Eig(P,'h'); Eigenvalues_of_P=e(N:-1:1);
disp('Error (that is, norm of A*P+P*A''+B*B''):'), disp(norm(A*P+P*A'+B*B')), pause

disp(' '), F1=randn(Nc); F2=randn(Nnc);
F=[0.95*F1/max(abs(Eig(F1,'r'))) randn(Nc,Nnc); ...
   zeros(Nnc,Nc) 0.95*F2/max(abs(Eig(F2,'r')))];
G=[randn(Nc,Ni); zeros(Nnc,Ni)]; H=randn(No,N);
disp(sprintf('Initial discrete-time system with %d controllable modes:',Nc))
ShowSys(F,G,H), disp('Eigenvalues of A (need to be inside unit circle!)'); disp(Eig(F,'r'))
[F,G,H]=SSTransform(F,G,H,randn(N)); disp('Scramble this system:'), ShowSys(F,G,H)
[P,rc]=CtrbGramian(F,G,'DT'), e=Eig(P,'h'); Eigenvalues_of_P=e(N:-1:1);
disp('Error (that is, norm of P-F*P*F''-G*G''):'), disp(norm(P-F*P*F'-G*G')), disp(' ')

disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:ObsvMatrixTest">ObsvMatrixTest</a>'), disp(' ')
% end script CtrbGramianTest
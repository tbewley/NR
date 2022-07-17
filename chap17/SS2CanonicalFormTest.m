% script <a href="matlab:SS2CanonicalFormTest">SS2CanonicalFormTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Chapter 20.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

n=4; ni=1; no=1; Ao=randn(n); Bo=randn(n,ni); Co=randn(no,n); Do=randn(no,ni);
disp('Initial random SISO state-space form {Ao,Bo,Co,Do}:'), ShowSys(Ao,Bo,Co,Do)

[A,B,C]=SS2CanonicalForm(Ao,Bo,Co,'Controller');         ShowSys(A,B,C,Do), pause
[A,B,C]=SS2CanonicalForm(Ao,Bo,Co,'Reachability');       ShowSys(A,B,C,Do), pause
[A,B,C]=SS2CanonicalForm(Ao,Bo,Co,'DTControllability');  ShowSys(A,B,C,Do), pause
[A,B,C]=SS2CanonicalForm(Ao,Bo,Co,'Observer');           ShowSys(A,B,C,Do), pause
[A,B,C]=SS2CanonicalForm(Ao,Bo,Co,'Observability');      ShowSys(A,B,C,Do), pause
[A,B,C]=SS2CanonicalForm(Ao,Bo,Co,'DTConstructibility'); ShowSys(A,B,C,Do), pause

N=2; n=4*N; disp(' '); disp('Initialize a random MIMO state-space form with sparsity:')
AO=[rand(N)  zeros(N) rand(N)  zeros(N);
    rand(N)  rand(N)  rand(N)  rand(N);
    zeros(N) zeros(N) rand(N)  zeros(N);
    zeros(N) zeros(N) rand(N)  rand(N)];
BO=[rand(N); rand(N); zeros(N); zeros(N)];
CO=[rand(N)  zeros(N) rand(N)   zeros(N)]; DO=rand(N); ShowSys(AO,BO,CO,DO)
disp(' '), disp('... scramble this state-space form:')
R=rand(n); [Abar,Bbar,Cbar]=SSTransform(AO,BO,CO,R); ShowSys(Abar,Bbar,Cbar,DO)

disp(' '), disp('... and transform to reveal structure in four different ways:'); pause
[A,B,C,rc,rnc]=SS2CanonicalForm(AO,BO,CO,'ControllabilityBlockStaircase');
ShowSys(A,B,C,DO), pause;
[A,B,C,ro,rno]=SS2CanonicalForm(AO,BO,CO,'ObservabilityBlockStaircase');
ShowSys(A,B,C,DO), pause;

[A,B,C,rco,rcno,rnco,rncno]=SS2CanonicalForm(Abar,Bbar,Cbar,'BlockKalman');
ShowSys(A,B,C,DO), disp(' ')
EOco  =Eig(AO(1:N,1:N),'r');             Eco  =Eig(A(1:N,1:N),'r');
EOcno =Eig(AO(N+1:2*N,N+1:2*N),'r');     Ecno =Eig(A(N+1:2*N,N+1:2*N),'r');
EOnco =Eig(AO(2*N+1:3*N,2*N+1:3*N),'r'); Enco =Eig(A(2*N+1:3*N,2*N+1:3*N),'r');
EOncno=Eig(AO(3*N+1:4*N,3*N+1:4*N),'r'); Encno=Eig(A(3*N+1:4*N,3*N+1:4*N),'r');
disp(sprintf('controllable/observable           eigenvalues before: %.4g %.4g %.4g',EOco))
disp(sprintf('                                              after:  %.4g %.4g %.4g',Eco))
disp(sprintf('controllable/null-observable      eigenvalues before: %.4g %.4g %.4g',EOcno))
disp(sprintf('                                              after:  %.4g %.4g %.4g',Ecno))
disp(sprintf('null-controllable/observable      eigenvalues before: %.4g %.4g %.4g',EOnco))
disp(sprintf('                                              after:  %.4g %.4g %.4g',Enco))
disp(sprintf('null-controllable/null-observable eigenvalues before: %.4g %.4g %.4g',EOncno))
disp(sprintf('                                              after:  %.4g %.4g %.4g',Encno))
pause;

[A,B,C,r]=SS2CanonicalForm(Abar,Bbar,Cbar,'Minimal'); ShowSys(A,B,C,DO), disp(' ')
E=Eig(A,'r'); disp(sprintf('Eigenvalues of minimal realization: %.4g %.4g %.4g',E))

disp(' '); disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:BalancedFormTest">BalancedFormTest</a>'), disp(' ')
% end script SS2CanonicalFormTest

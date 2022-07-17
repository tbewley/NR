% script <a href="matlab:TF2SSTest">TF2SSTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Sections 20.3.1 and 20.3.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap20">Chapter 20</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

clear, disp('Original transfer function:')
b=rand(1,5), a=[1 rand(1,4)], disp(' ')

disp('Controller form:')
[Ac,Bc,Cc,Dc]=TF2SS(b,a,'Controller'); ShowSys(Ac,Bc,Cc,Dc)
[bc,ac]=SS2TF(Ac,Bc,Cc,Dc); ERRORc=norm(b-bc)+norm(a-ac), pause

disp(' '), disp('Reachability form:')
[Aco,Bco,Cco,Dco]=TF2SS(b,a,'Reachability'); ShowSys(Aco,Bco,Cco,Dco)
[bco,aco]=SS2TF(Aco,Bco,Cco,Dco); ERRORco=norm(b-bco)+norm(a-aco), pause

disp(' '), disp('DTControllability form:')
[Act,Bct,Cct,Dct]=TF2SS(b,a,'DTControllability'); ShowSys(Act,Bct,Cct,Dct)
[bct,act]=SS2TF(Act,Bct,Cct,Dct); ERRORct=norm(b-bct)+norm(a-act), pause

disp(' '), disp('Observer form:')
[Ao,Bo,Co,Do]=TF2SS(b,a,'Observer'); ShowSys(Ao,Bo,Co,Do)
[bo,ao]=SS2TF(Ao,Bo,Co,Do); ERRORo=norm(b-bo)+norm(a-ao), pause

disp(' '), disp('Observability form:')
[Aob,Bob,Cob,Dob]=TF2SS(b,a,'Observability'); ShowSys(Aob,Bob,Cob,Dob)
[bob,aob]=SS2TF(Aob,Bob,Cob,Dob); ERRORob=norm(b-bob)+norm(a-aob), pause

disp(' '), disp('DTConstructibility form:')
[Acs,Bcs,Ccs,Dcs]=TF2SS(b,a,'DTConstructibility'); ShowSys(Acs,Bcs,Ccs,Dcs)
[bcs,acs]=SS2TF(Acs,Bcs,Ccs,Dcs); ERRORcs=norm(b-bcs)+norm(a-acs)

disp(' '); disp('Next <a href="matlab:help NRchap20">NRchap20</a> demo: <a href="matlab:CtrbMatrixTest">CtrbMatrixTest</a>'), disp(' ')
% end script TF2SSTest

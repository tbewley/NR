% script <a href="matlab:DAREtest">DAREtest</a>
% Test <a href="matlab:help RDE">RDE</a>, <a href="matlab:help DARE">DARE</a>, & <a href="matlab:help DAREdoubling">DAREdoubling</a> with random F and random Q>0, S>0.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.4.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also CALEtest, CAREtest, DALEtest.  Depends on Inv, RDEtest.

RDEtest

disp('Now testing DARE & DAREdoubling with random F and random Q>0, S>0.')
G=Inv(F'); M=[F+S*G*Q, -S*G; -G*Q, G]; MInv=[G', G'*S; Q*G', F'+Q*G'*S];
check=norm(eye(2*n)-M*MInv)
Y=real(DARE(F,S,Q,n)),      error_DARE        =norm(F'*Y*Inv(eye(n)+S*Y)*F-Y+Q)
Z=DAREdoubling(F,S,Q,n,10), error_DAREdoubling=norm(F'*Z*Inv(eye(n)+S*Z)*F-Z+Q), disp(' ')

% end script DAREtest

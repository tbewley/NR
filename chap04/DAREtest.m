% script <a href="matlab:NR_DAREtest">NR_DAREtest</a>
% Test <a href="matlab:help NR_RDE">NR_RDE</a>, <a href="matlab:help NR_DARE">NR_DARE</a>, & <a href="matlab:help NR_DAREdoubling">NR_DAREdoubling</a> with random F and random Q>0, S>0.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.4.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_CALEtest, NR_CAREtest, NR_DALEtest.  Depends on Inv, NR_RDEtest.

NR_RDEtest

disp('Now testing NR_DARE & NR_DAREdoubling with random F and random Q>0, S>0.')
G=Inv(F'); M=[F+S*G*Q, -S*G; -G*Q, G]; MInv=[G', G'*S; Q*G', F'+Q*G'*S];
check=norm(eye(2*n)-M*MInv)
Y=real(NR_DARE(F,S,Q,n)),      error_NR_DARE        =norm(F'*Y*Inv(eye(n)+S*Y)*F-Y+Q)
Z=NR_DAREdoubling(F,S,Q,n,10), error_NR_DAREdoubling=norm(F'*Z*Inv(eye(n)+S*Z)*F-Z+Q), disp(' ')

% end script NR_DAREtest

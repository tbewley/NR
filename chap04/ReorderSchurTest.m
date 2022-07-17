% script <a href="matlab:ReorderSchurTest">ReorderSchurTest</a>
% Test <a href="matlab:help ReorderSchur">ReorderSchur</a> with random F and random Q>0.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.5.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing ReorderSchur with random F and random Q>0.')
n=8; A=0.5*randn(n); [U,T]=Schur(A);
[U,T]=ReorderSchur(U,T,'lhp');          LHPfirst=diag(T),              res=norm(A-U*T*U')
[U,T]=ReorderSchur(U,T,'unitdisk');     RadiusSort=abs(diag(T)),       res=norm(A-U*T*U')
[U,T]=ReorderSchur(U,T,'absolute',.01); AbsoluteRealPartSort=diag(T),  res=norm(A-U*T*U')
disp(' ')

% end script ReorderSchurTest

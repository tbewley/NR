% script ReorderSchurTest
% Test ReorderSchur with random F and random Q>0.
% Numerical Renaissance Codebase 1.0, Chapter 4; see text for copyleft info.

n=8; A=0.5*randn(n); [U,T]=Schur(A);
[U,T]=ReorderSchur(U,T,'lhp');          LHPfirst=diag(T),              res=norm(A-U*T*U')
[U,T]=ReorderSchur(U,T,'unitdisk');     RadiusSort=abs(diag(T)),       res=norm(A-U*T*U')
[U,T]=ReorderSchur(U,T,'absolute',.01); AbsoluteRealPartSort=diag(T),  res=norm(A-U*T*U')

% end script ReorderSchurTest

function [A,V] = Hessenberg(A)
% function [A,V] = Hessenberg(A)
% Pre and post-multiply an nxn matrix A by a sequence of Householder reflections to reduce
% it to upper Hessenberg form T_0, thus computing the unitary similarity transformation
% A=V T_0 V^H.  
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Depends on <a href="matlab:help ReflectCompute">ReflectCompute</a>, <a href="matlab:help Reflect">Reflect</a>.

[m,n]=size(A);  if nargout>1, V=eye(n,n); end 
for i=1:n-2
   [sig,w] = ReflectCompute(A(i+1:n,i));  A=Reflect(A,sig,w,i+1,n,1,n,'B');
   if nargout>1, V=Reflect(V,sig,w,i+1,n,1,n,'R'); end
end
end % function Hessenberg

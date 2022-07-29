function [A,U,V] = NR_Bidiagonalization(A,m,n)
% function [A,U,V] = NR_Bidiagonalization(A,m,n)
% Pre and post-multiply an mxn matrix A by a sequence of Householder reflections
% to reduce it to upper bidiagonal form B, thus computing the decomposition A=U B V^H.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_Hessenberg. Depends on ReflectCompute, Reflect.
% Verify with BidiagonalizationTest.

V=eye(n,n); U=eye(m,m); 
for i=1:min(m,n)
  if i<m, [sig,w] = ReflectCompute(A(i:m,i));
          A=Reflect(A,sig,w,i,  m,i,n,'L'); U=Reflect(U,sig,w,i,  m,1,m,'R'); end
  if i<n, [sig,w] = ReflectCompute(A(i,i+1:n)');
          A=Reflect(A,sig,w,i+1,n,i,m,'R'); V=Reflect(V,sig,w,i+1,n,2,n,'R'); end
end
end % function NR_Bidiagonalization

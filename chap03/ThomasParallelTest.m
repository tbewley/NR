% script <a href="matlab:ThomasParallelTest">ThomasParallelTest</a>
% Test <a href="matlab:help ThomasParallel">ThomasParallel</a> on a random tridiagonal matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 2.4.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap02">Chapter 2</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also ThomasTest, ThomasTTTest, CirculantTest.

disp('Now testing ThomasParallel on a random tridiagonal matrix.')
disp('First, start up matlab pool...'), tic, matlabpool open, toc, p=matlabpool('size');

n=9;         % SET UP AND CHECK A SMALL PROBLEM
a=randn(n,1); b=randn(n,1); c=randn(n,1); g=randn(n,1); a(1)=0; c(n)=0; 
A=diag(a(2:n),-1)+diag(b(1:n),0)+diag(c(1:n-1),1);
disp(sprintf('\nNow checking ThomasParallel using %d threads, aka "labs", taking n= %d',p,n))
tic; [x]=ThomasParallel(a,b,c,g,n,p); toc; A*x, g, error=norm(A*x-g)
disp(sprintf('\nNow checking the equivalent Thomas algorithm')) 
tic; [x]=Thomas(a,b,c,g,n); toc; error=norm(A*x-g)

n=1000000;  % SET UP AND TIME A BIG PROBLEM
a=randn(n,1); b=randn(n,1); c=randn(n,1); g=randn(n,1); a(1)=0; c(n)=0; 
disp(sprintf('\nNow timing ThomasParallel using %d threads taking n= %4.2e',p,n))
tic; [x]=ThomasParallel(a,b,c,g,n,p); toc;
disp(sprintf('\nNow timing the equivalent Thomas algorithm')) 
tic; [x]=Thomas(a,b,c,g,n); toc;

disp(sprintf('\nNow disabling the %d threads',p))
tic; matlabpool close; toc, disp(' ')

% end script ThomasParallelTest

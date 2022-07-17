function index=BSTenumerate(D,r)
% function index=BSTenumerate(D,r)
% Enumerate the records of a BST from smallest to largest.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also BSTinitialize, BSTinsert, BSTrotateLR, BSTrotateL, BSTrotateR, BSTbalance,
% BSTsuccessor.  Verify with BSTtest.

n=0; m=r; while D(m,end-3)>0, m=D(m,end-3); end
while m>0, n=n+1; index(n)=m; m=BSTsuccessor(D,m); end
end % function BSTenumerate                                   

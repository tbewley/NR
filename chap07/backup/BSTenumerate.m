function index=NR_BSTenumerate(D,r)
% function index=NR_BSTenumerate(D,r)
% Enumerate the records of a NR_BST from smallest to largest.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTrotateLR, NR_BSTrotateL, NR_BSTrotateR, NR_BSTbalance,
% NR_BSTsuccessor.  Verify with NR_BSTtest.

n=0; m=r; while D(m,end-3)>0, m=D(m,end-3); end
while m>0, n=n+1; index(n)=m; m=NR_BSTsuccessor(D,m); end
end % function NR_BSTenumerate                                   

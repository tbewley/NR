function index=NR_BSTenumerate(D,r)
% function index=NR_BSTenumerate(D,r)
% Enumerate the records of a NR_BST from smallest to largest.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTrotateLR, NR_BSTrotateL, NR_BSTrotateR, NR_BSTbalance,
% NR_BSTsuccessor.  Verify with NR_BSTtest.

n=0; m=r; while D(m,end-3)>0, m=D(m,end-3); end
while m>0, n=n+1; index(n)=m; m=NR_BSTsuccessor(D,m); end
end % function NR_BSTenumerate                                   

function [s]=BSTsuccessor(D,r)
% function [s]=BSTsuccessor(D,r)
% Find the in-order successor record, s, of a given record r of a BST.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also BSTinitialize, BSTinsert, BSTrotateLR, BSTrotateL, BSTrotateR, BSTbalance,
% BSTenumerate.  Verify with BSTtest.

s=D(r,end-1); if s>0, while D(s,end-3)>0, s=D(s,end-3); end
else, s=D(r,end-2); while s>0, s=D(s,end-2); end, s=abs(s);
end % function BSTsuccessor                                 

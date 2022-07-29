function [p]=NR_BSTpredecessor(D,r)
% function [p]=NR_BSTpredecessor(D,r)
% ???
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTdelete, NR_BSTenumerate. Verify with NR_BSTtest.

p=D(r,end-3); if p>0, while D(p,end-1)>0, p=D(p,end-1); end
else, p=r; while D(p,end-2)<0, p=abs(D(p,end-2)); end
end % function NR_BSTpredecessor                               

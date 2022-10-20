function [s]=NR_BSTsuccessor(D,r)
% function [s]=NR_BSTsuccessor(D,r)
% Find the in-order successor record, s, of a given record r of a NR_BST.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTrotateLR, NR_BSTrotateL, NR_BSTrotateR, NR_BSTbalance,
% NR_BSTenumerate.  Verify with NR_BSTtest.

s=D(r,end-1); if s>0, while D(s,end-3)>0, s=D(s,end-3); end
else, s=D(r,end-2); while s>0, s=D(s,end-2); end, s=abs(s);
end % function NR_BSTsuccessor                                 

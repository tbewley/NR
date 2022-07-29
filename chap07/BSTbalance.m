function [D,q]=NR_BSTbalance(D,q)
% function [D,q]=NR_BSTbalance(D,q)
% Scan once through all records of a NR_BST that are at least grandparents, and apply a left
% or right rotation to each such record only if such a rotation shortens that subtree.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTrotateLR, NR_BSTrotateL, NR_BSTrotateR, NR_BSTenumerate,
% NR_BSTsuccessor.  Verify with NR_BSTtest.

[D,q]=NR_BSTrotateLR(D,q);
p=D(q,end-3); if p>0 & D(p,end)>1, [D,p]=NR_BSTbalance(D,p); end  
r=D(q,end-1); if r>0 & D(r,end)>1, [D,r]=NR_BSTbalance(D,r); end
end % function NR_BSTbalance                                 

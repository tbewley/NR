function [D,q]=BSTbalance(D,q)
% function [D,q]=BSTbalance(D,q)
% Scan once through all records of a BST that are at least grandparents, and apply a left
% or right rotation to each such record only if such a rotation shortens that subtree.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also BSTinitialize, BSTinsert, BSTrotateLR, BSTrotateL, BSTrotateR, BSTenumerate,
% BSTsuccessor.  Verify with BSTtest.

[D,q]=BSTrotateLR(D,q);
p=D(q,end-3); if p>0 & D(p,end)>1, [D,p]=BSTbalance(D,p); end  
r=D(q,end-1); if r>0 & D(r,end)>1, [D,r]=BSTbalance(D,r); end
end % function BSTbalance                                 

function [D,q]=NR_BSTrotateLR(D,q)
% function [D,q]=NR_BSTrotateLR(D,q)
% Apply a left or right rotation at record q if such a rotation helps to balance the NR_BST.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTrotateL, NR_BSTrotateR, NR_BSTbalance, NR_BSTenumerate,
% NR_BSTsuccessor.  Verify with NR_BSTtest.

p=D(q,end-3); r=D(q,end-1);
if p>0, Dpg=D(p,end); pp=D(p,end-3); if pp>0, Dppg=D(pp,end); else, Dppg=-1; end
else, Dpg=-1; Dppg=-2; end
if r>0, Drg=D(r,end); rr=D(r,end-1); if rr>0, Drrg=D(rr,end); else, Drrg=-1; end
else, Drg=-1; Drrg=-2; end
if Dppg>Drg, [D,q]=NR_BSTrotateR(D,q); elseif Drrg>Dpg, [D,q]=NR_BSTrotateL(D,q); end
end % function NR_BSTrotateLR                               

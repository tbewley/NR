function [D,q]=NR_BSTbalance1(D,q)
% function [D,q]=NR_BSTbalance1(D,q)
% Apply a left or right rotation at record q if such a rotation helps to balance the NR_BST.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTplot, NR_BSTenumerate, NR_BSTsuccessor.
% Verify with NR_BSTtest.

p=D(q,end-3); r=D(q,end-1);
if p>0, Dpg=D(p,end); pp=D(p,end-3); if pp>0, Dppg=D(pp,end); else, Dppg=-1; end
else, Dpg=-1; Dppg=-2; end
if r>0, Drg=D(r,end); rr=D(r,end-1); if rr>0, Drrg=D(rr,end); else, Drrg=-1; end
else, Drg=-1; Drrg=-2; end
if     Dppg>Drg, [D,q]=NR_BSTrotateRight(D,q);
elseif Drrg>Dpg, [D,q]=NR_BSTrotateLeft(D,q); end
end % function NR_BSTbalance1                               

function [D,r]=NR_BSTinitialize(D)
% function [D,r]=NR_BSTinitialize(D)
% Initialize a NR_BST based on a list of records D with markers in the first column.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_BSTinsert, NR_BSTrotateLR, NR_BSTrotateL, NR_BSTrotateR, NR_BSTbalance, NR_BSTenumerate,
% NR_BSTsuccessor.  Verify with NR_BSTtest.

[n,m]=size(D); D=[D zeros(n,5)]; r=1;
for i=2:n, [D,r]=NR_BSTinsert(D,i,r); if mod(i,1)==0, NR_BSTplot(D,r), pause(.01), end, end
disp('Press any key to do final balancing.  If balancing during insertion was adequate,')
disp('this step will not do that much...'); pause; [D,r]=NR_BSTbalance(D,r); NR_BSTplot(D,r)
end % function NR_BSTinitialize                                   

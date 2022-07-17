function [D,r]=BSTinitialize(D)
% function [D,r]=BSTinitialize(D)
% Initialize a BST based on a list of records D with markers in the first column.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also BSTinsert, BSTrotateLR, BSTrotateL, BSTrotateR, BSTbalance, BSTenumerate,
% BSTsuccessor.  Verify with BSTtest.

[n,m]=size(D); D=[D zeros(n,5)]; r=1;
for i=2:n, [D,r]=BSTinsert(D,i,r); if mod(i,1)==0, BSTplot(D,r), pause(.01), end, end
disp('Press any key to do final balancing.  If balancing during insertion was adequate,')
disp('this step will not do that much...'); pause; [D,r]=BSTbalance(D,r); BSTplot(D,r)
end % function BSTinitialize                                   

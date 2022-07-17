% script <a href="matlab:BSTtest">BSTtest</a>
% Test the Binary Search Tree (BST) routines on a set of random data.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also BSTinitialize, BSTinsert, BSTrotateLR, BSTrotateL, BSTrotateR, BSTbalance,
% BSTenumerate, BSTsuccessor.

clear; n=200; c=2; for i=1:n; D(i,1)=i+randn*c; end   % c = "randomness" of initial data
[D,r]=BSTinitialize(D); figure(1), clf, index=BSTenumerate(D,r); plot(D(index,1),'x')

% end script BSTtest                                   

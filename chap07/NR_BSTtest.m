% script <a href="matlab:NR_BSTtest">NR_BSTtest</a>
% Test the Binary Search Tree (NR_BST) routines on a set of random data.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTrotateLR, NR_BSTrotateL, NR_BSTrotateR, NR_BSTbalance,
% NR_BSTenumerate, NR_BSTsuccessor.

clear; n=200; c=200; for i=1:n; D(i,1)=i+randn*c; end   % c = "randomness" of initial data
[D,r]=NR_BSTinitialize(D); figure(1), clf, index=NR_BSTenumerate(D,r); plot(D(index,1),'x')

% end script NR_BSTtest                                   

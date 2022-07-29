% script <a href="matlab:NR_BlockInsertionSortTest">NR_BlockInsertionSortTest</a>
% Test <a href="matlab:help NR_BlockInsertionSort">NR_BlockInsertionSort</a> on a random set of data.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

n=99; D=2*rand(n,1)-1; close all,    plot(D(:,1),'x'), pause(0.1)
[D,index]=NR_BlockInsertionSort(D,1,n); plot(D(:,1),'x')

% end script NR_BlockInsertionSortTest

% script <a href="matlab:NR_BitonicSortTest">NR_BitonicSortTest</a>
% Test <a href="matlab:help NR_BitonicSort">NR_BitonicSort</a> on a random set of data.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

n=2^7; D=2*rand(n,1)-1; close all, plot(D(:,1),'x'), axis([1 n -1 1]), pause(0.5)
[D,index]=NR_BitonicSort(D,1,n);      plot(D(:,1),'x'), axis([1 n -1 1])

% end script NR_BitonicSortTest

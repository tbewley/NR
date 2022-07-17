% script <a href="matlab:OddEvenMergeSortTest">OddEvenMergeSortTest</a>
% Test <a href="matlab:help OddEvenMergeSort">OddEvenMergeSort</a> on a random set of data.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.2.2.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

n=2^7; D=2*rand(n,1)-1; close all, plot(D(:,1),'x'), axis([1 n -1 1]), pause(0.5)
[D,index]=OddEvenMergeSort(D,1,n); plot(D(:,1),'x'), axis([1 n -1 1])

% end script OddEvenMergeSortTest

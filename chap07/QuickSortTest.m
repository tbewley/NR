% script <a href="matlab:QuickSortTest">QuickSortTest</a>
% Test <a href="matlab:help InsertionSort">InsertionSort</a> on a random set of data.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

n=99; D=2*rand(n,1)-1; close all, plot(D(:,1),'x'), pause(0.5)
[D,index]=QuickSort(D,1,n);       plot(D(:,1),'x')

% end script QuickSortTest

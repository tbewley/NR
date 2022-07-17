% script <a href="matlab:SortComplexTest">SortComplexTest</a>
% Test <a href="matlab:help SortComplex">SortComplex</a> on a random complex vector of data.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

n=6; D=randn(n,1)+i*randn(n,1)
[D,index]=SortComplex(D,'absolute value',@QuickSort)
[D,index]=SortComplex(D,'real part',@MergeSort)

% end script SortComplexTest

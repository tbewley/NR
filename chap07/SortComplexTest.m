% script <a href="matlab:NR_SortComplexTest">NR_SortComplexTest</a>
% Test <a href="matlab:help NR_SortComplex">NR_SortComplex</a> on a random complex vector of data.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

n=6; D=randn(n,1)+i*randn(n,1)
[D,index]=NR_SortComplex(D,'absolute value',@NR_QuickSort)
[D,index]=NR_SortComplex(D,'real part',@NR_MergeSort)

% end script NR_SortComplexTest

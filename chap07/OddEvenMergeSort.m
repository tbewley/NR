function [D,index]=NR_OddEvenNR_MergeSort(D,v,a,n)
% function [D,index]=NR_OddEvenNR_MergeSort(D,v,a,n)
% Reorder D based on the n=2^s elements in its first column using an odd/even merge sort.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_InsertionSort, NR_BlockInsertionSort, NR_MergeSort, NR_QuickSort, NR_HeapSort, NR_CocktailSort,
% NR_BitonicSort.  Verify with NR_OddEvenNR_MergeSortTest.

if nargin==3, n=a; a=1; end, if nargout==2, D=[D, [1:n]']; end
if n>1, m=round(n/2);
  D=NR_OddEvenNR_MergeSort(D,v,a,m);
  if v, plot(D(:,1),'kx'), axis([1 size(D,1) -1 1]), pause(0.1), end
  D=NR_OddEvenNR_MergeSort(D,v,a+m,m);
  if v, plot(D(:,1),'kx'), axis([1 size(D,1) -1 1]), pause(0.1), end
  D=OddEvenMerge(D,a,n,1);
  if v, plot(D(:,1),'kx'), axis([1 size(D,1) -1 1]), pause(0.1), end
end
if nargout==2, index=round(D(:,end)); D=D(:,1:end-1); end
end % function NR_OddEvenNR_MergeSort
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function D=OddEvenMerge(D,a,n,r)   % r is the distance of elements to be compared
m=r*2; if m<n
  D=OddEvenMerge(D,a,n,m); D=OddEvenMerge(D,a+r,n,m);   % even and odd subsequences
  for i=a+r:m:a+n-r-1, j=i+r; if D(i,1)>D(j,1), D([i j],:)=D([j i],:); end, end
else  j=a+r;                  if D(a,1)>D(j,1), D([a j],:)=D([j a],:); end
end
end % function OddEvenMerge
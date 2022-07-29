function [D,index]=NR_HeapSort(D,v,n)
% function [D,index]=NR_HeapSort(D,v,n)
% Reorder a matrix D based on the elements in its first column using a heap sort.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_InsertionSort, NR_BlockInsertionSort, NR_MergeSort, NR_QuickSort, NR_CocktailSort,
% NR_BitonicSort, NR_OddEvenNR_MergeSort.  Verify with NR_HeapSortTest.

if nargout==2, D=[D, [1:n]']; end, for a=floor(n/2):-1:1, D=Sift(D,a,n,v); end   % Heapify
for b=n:-1:2, D([1 b],:)=D([b 1],:);        % Peel off max record & put grandchild at root
  if v, plot(D(:,1),'x'), pause(0.1), end
  D=Sift(D,1,b-1,v);                        % Sift (re-heapify) & repeat
end, if nargout==2, index=round(D(:,end)); D=D(:,1:end-1); end
end % function NR_HeapSort                                   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function D=Sift(D,a,b,v)
while a*2<=b                                       % Working on one generation at a time
  c=a*2; if c<b & D(c,1) < D(c+1,1); c=c+1; end    % Find the child with largest marker            
  if D(a,1) < D(c,1); D([a c],:)=D([c a],:); a=c;  % Swap positions if necessary.
    if v, plot(D(:,1),'x'), pause(0.1), end
  else, return, end                       
end
end % function Sift

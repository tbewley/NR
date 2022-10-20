function R=NR_Hankel(top,right)
% function R=NR_Hankel(top,right)
% INPUT:  top   = specified top row of matrix
%         right = specified right column of matrix
% OUTPUT: R     = a Hankel matrix with specified top row and right column.
% EXAMPLE:  R=NR_Hankel([1 2 3 4 5],[5 6 7 8 9]), disp(' ')
% Numerical Renaissance codebase, Chapter 1, https://github.com/tbewley/NR
% Copyright 2021 by Thomas Bewley, distributed under BSD 3-Clause License. 

n=length(top); for row=1:n; R(row,:)=[top(row:n) right(2:row)]; end
end % function NR_Hankel
% script <a href="matlab:NR_CocktailSortTest">NR_CocktailSortTest</a>
% Test <a href="matlab:help NR_CocktailSort">NR_CocktailSort</a> on slightly out-of-order data.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

n=99; n1=(n+1)/2; D=0.85*([1:n]'-n1)/n1+0.15*(2*rand(n,1)-1); D([1 n])=D([n 1]);
close all, plot(D(:,1),'x'), pause(0.5), [D,index]=NR_CocktailSort(D,1,n); plot(D(:,1),'x')

% end script NR_CocktailSortTest

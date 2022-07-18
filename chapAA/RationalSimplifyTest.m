% script <a href="matlab:RationalSimplifyTest">RationalSimplifyTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

disp('Simplify a rational function'); 
num=PolyConv([1 10],[1 1],[1 10],[1 5]), den=PolyConv([1 5],[1 10],[1 2])
roots_num_before=roots(num)', roots_den_before=roots(den)'
[num,den]=RationalSimplify(num,den);
roots_num_after=roots(num)', roots_den_after=roots(den)', num, den

% end script RationalSimplifyTest

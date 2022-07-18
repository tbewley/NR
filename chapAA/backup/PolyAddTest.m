% script <a href="matlab:PolyAddTest">PolyAddTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

disp('Add row vectors a and b with right (sum_r) and left (sum_l) justification')
a=[1 2 3 4], b=[5 6 7], sum_r=PolyAdd(a,b), sum_l=PolyAdd(a,b,'l'), disp(' ')

% end script PolyAddTest

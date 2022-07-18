% script <a href="matlab:PolyDiffTest">PolyDiffTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

disp('Compute the zeroth through third derivatives of the polynomial a'), a=[4 4 4 4]
p0=PolyDiff(a,0), p1=PolyDiff(a,1), p2=PolyDiff(a,2), p3=PolyDiff(a,3), disp(' ')

% end script PolyDiffTest

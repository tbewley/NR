% script <a href="matlab:PolyConvTest">PolyConvTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

disp('Compute the convolution of a and b') 
a=[1 2], b=[2 3 4], pab=PolyConv(a,b), pba=PolyConv(b,a), disp(' ')

% end script PolyConvTest

% script <a href="matlab:PolyDivideTest">PolyDivideTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

disp('Perform polynomial division of den into num, resulting in div with remainder rem'); 
num=[4 5 6], den=[1 2 3], [div,rem]=PolyDivide(num,den)
check=PolyAdd(PolyConv(div,den),rem), disp(' ')

% end script PolyDivideTest

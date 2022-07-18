% script <a href="matlab:PolyDivTest">PolyDivTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

disp('Perform polynomial division of den into num, resulting in div with remainder rem'); 
num=[1 2 3 4 5 6], den=[1 2 3], [div,rem]=PolyDiv(num,den)
check=PolyAdd(PolyConv(div,den),rem), disp(' ')

syms K, num=[1 K 2*K 3*K], den=[1 K], [div,rem]=PolyDiv(num,den)
check=PolyAdd(PolyConv(div,den),rem), disp(' ')

% end script PolyDivTest

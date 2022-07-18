% script <a href="matlab:PolyValTest">PolyValTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

disp('First, compute p(s)=2*s^2+4*s+5 for s=10')
s=10,         p=[2 4 5], v=PolyVal(p,s), disp(' ')

disp('Then, compute p(s)=(s-1)(s-2)(s-3)=s^3+6*s^2+11*s+6 for s=1, s=2, and s=3')
r=[1 2 3], p=Poly(r), check=PolyVal(p,r), disp(' ')

% end script PolyValTest

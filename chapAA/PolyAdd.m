function a=PolyAdd(a,b,c,d,e,f,g,h,i,j)
% function a=PolyAdd(a,b,c,d,e,f,g,h,i,j)
% Add two to ten polynomials with right justification.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

if nargin>9, a=PolyAdd(a,j); end, if nargin>8, a=PolyAdd(a,i); end
if nargin>7, a=PolyAdd(a,h); end, if nargin>6, a=PolyAdd(a,g); end
if nargin>5, a=PolyAdd(a,f); end, if nargin>4, a=PolyAdd(a,e); end
if nargin>3, a=PolyAdd(a,d); end, if nargin>2, a=PolyAdd(a,c); end
m=length(a); n=length(b); a=[zeros(1,n-m) a]+[zeros(1,m-n) b];
end % function PolyAdd

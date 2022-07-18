function p=PolyConv(a,b,c,d,e,f,g,h,i,j)
% function p=PolyConv(a,b,c,d,e,f,g,h,i,j)
% Recursively compute the convolution of the two to ten polynomials, given as arguments.  
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

if nargin>9, e=PolyConv(e,j); end, if nargin>8, e=PolyConv(e,i); end
if nargin>7, e=PolyConv(e,h); end, if nargin>6, e=PolyConv(e,g); end
if nargin>5, e=PolyConv(e,f); end, if nargin>4, d=PolyConv(d,e); end
if nargin>3, c=PolyConv(c,d); end, if nargin>2, b=PolyConv(b,c); end
m=length(a); n=length(b); p=zeros(1,n+m-1);
for k=0:n-1; p=p+[zeros(1,n-1-k) b(n-k)*a zeros(1,k)]; end
end % function PolyConv

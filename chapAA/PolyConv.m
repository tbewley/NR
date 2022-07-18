function p=PolyConv(a,b,c,d,e,f,g,h,i,j)
% function p=PolyConv(a,b,c,d,e,f,g,h,i,j)
% Recursively compute the convolution of the two to ten polynomials, given as arguments.  
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

if nargin>9, a=PolyConv(a,j); end, if nargin>8, a=PolyConv(a,i); end
if nargin>7, a=PolyConv(a,h); end, if nargin>6, a=PolyConv(a,g); end
if nargin>5, a=PolyConv(a,f); end, if nargin>4, a=PolyConv(a,e); end
if nargin>3, a=PolyConv(a,d); end, if nargin>2, a=PolyConv(a,c); end
m=length(a); n=length(b); p=zeros(1,n+m-1);
for k=0:n-1; p=p+[zeros(1,n-1-k) b(n-k)*a zeros(1,k)]; end
end % function PolyConv

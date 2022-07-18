function p=PolyDiff(p,d,n)
% function p=PolyDiff(p,d,n)
% Recursively compute the d'th derivative of a polynomial p of order n.  
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

if nargin<2, d=1; end, if nargin<3, n=length(p)-1; end
if d>0, p=[n:-1:1].*p(1:n); if d>1, p=PolyDiff(p,d-1,n-1); end, end
end % function PolyDiff

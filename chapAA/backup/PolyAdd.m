function [sum]=PolyAdd(a,b,justification)
% function [sum]=PolyAdd(a,b,justification)
% Add row vectors a and b with either 'r' (default) or 'l' justification.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

m=length(a); n=length(b);  if nargin<3, justification='r'; end
if justification=='r', a=[zeros(1,n-m) a]; b=[zeros(1,m-n) b];
else                   a=[a zeros(1,n-m)]; b=[b zeros(1,m-n)]; end, sum=a+b;
end % function PolyAdd

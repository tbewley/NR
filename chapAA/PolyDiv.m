function [d,b]=PolyDiv(b,a)
% function [d,b]=PolyDiv(b,a)
% Perform polynomial division of a into b, resulting in d with remainder in the modified b.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

m=length(b); n=length(a); if m<n d=0; else
  if strcmp(class(b),'sym')|strcmp(class(a),'sym'), syms d, end
  for j=1:m-n+1, d(j)=b(1)/a(1); b(1:n)=PolyAdd(b(1:n),-d(j)*a); b=b(2:end); end, end
end % function PolyDiv

function [b,a]=RationalSimplify(b,a)
% function [b,a]=RationalSimplify(b,a)
% Simplify a rational function b(s)/a(s) [or b(z)/a(z)] by dividing out common factors,
% strippling leading zeros, then normalizing both by a(1).
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

f=1; while f; x=roots(a); y=roots(b); f=0; for i=1:length(x); for j=1:length(y);
  if abs(x(i)-y(j))<1e-6, f=1; a=PolyDiv(a,[1 -x(i)]); b=PolyDiv(b,[1 -x(i)]); break, end
end, if f, break, end, end, end
a=a(find(abs(a)>1e-10,1):end); b=b(find(abs(b)>1e-10,1):end); b=b/a(1); a=a/a(1);
end % function RationalSimplify

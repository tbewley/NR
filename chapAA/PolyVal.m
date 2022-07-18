function v=PolyVal(p,s)
% function v=PolyVal(p,s)
% For n=length(p), compute p(1)*s(i)^(n-1) + ... + p(n-1)*s(i) + p(n) for each s(i) in s.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

n=length(p); for j=1:length(s); v(j)=0; for i=0:n-1, v(j)=v(j)+p(n-i)*s(j)^i; end, end
end % function PolyVal

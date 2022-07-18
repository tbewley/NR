function p=Poly(r)
% function p=Poly(r)
% Compute the coefficients of the polynomial with roots r.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

n=length(r); p=1; for i=1:n; p=PolyConv(p,[1 -r(i)]); end
end % function Poly

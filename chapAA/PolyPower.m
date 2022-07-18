function b=PolyPower(p,n)
% function b=PolyPower(p,n)
% Compute the convolution of the polynomial p with itself n times.  
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

if n==0, b=1; else, b=p; for i=2:n, b=PolyConv(b,p); end
end % function PolyPower

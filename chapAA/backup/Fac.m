function a=Fac(b)
% function a=Fac(b)
% Compute the factorial of each element of the matrix b.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

[n,m]=size(b); for i=1:n,for j=1:m, a(i,j)=1; for k=2:b(i,j); a(i,j)=a(i,j)*k; end,end,end
end % function Fac

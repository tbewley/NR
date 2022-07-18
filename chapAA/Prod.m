function p=Prod(a)
% function p=Prod(a)
% Compute the product p of the elements in the vector a.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

p=a(1); for i=2:length(a); p=p*a(i); end
end % function Prod

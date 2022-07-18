function [d,r]=PolyDivide(num,den)
% function [div,rem]=PolyDivide(num,den)
% Perform polynomial division of den into num, resulting in div with remainder rem.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

m=length(num); n=length(den); r=num; d=0;
for j=1:m-n+1, d(j)=r(1)/den(1); r=PolyAdd(r,-d(j)*den,'l'); r=r(2:end); end
end % function PolyDivide

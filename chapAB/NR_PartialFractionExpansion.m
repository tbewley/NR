function [p,d,k,n]=PartialFractionExpansion(num,den,eps)
% function [p,d,k,n]=PartialFractionExpansion(num,den,eps)
% Compute {p,d,k,n} so that Y(s)=num(s)/den(s)=d(1)/(s-p(1))^k(1) +...+ d(n)/(s-p(n))^k(n),
% where order(num)<=order(den) and eps is tolerance when finding repeated roots.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section B.6.3.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAB">Appendix B</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Depends on <a href="matlab:help Roots">Roots</a>, <a href="matlab:help SortComplex">SortComplex</a>, <a href="matlab:help PolyDiv">PolyDiv</a>, <a href="matlab:help PolyConv">PolyConv</a>, <a href="matlab:help PolyDiff">PolyDiff</a>, <a href="matlab:help PolyVal">PolyVal</a>, <a href="matlab:help Fac">Fac</a>.
% Test with <a href="matlab:help PartialFractionExpansionTest">PartialFractionExpansionTest</a>.

n=length(den)-1; m=length(num)-1; flag=0; if n<1, p=1; k=0; d=num/den; n=1; return, end
if m==n, flag=1; [div,rem]=PolyDiv(num,den); m=m-1; else, rem=num; end
k=ones(n,1); p=roots(den); if n>1, p=SortComplex(p); end, if nargin<3, eps=1e-3; end
for i=1:n-1, if abs(p(i+1)-p(i))<eps, k(i+1)=k(i)+1; end, end, k(n+1,1)=0;
for i=n:-1:1
  if k(i)>=k(i+1), r=k(i); a=1;
    for j=1:i-k(i), a=PolyConv(a,[1 -p(j)]); end
    for j=i+1:n,    a=PolyConv(a,[1 -p(j)]); end
    for j=1:k(i)-1, ad{j}=PolyDiff(a,j); end
  end
  q=r-k(i); d(i,1)=PolyVal(PolyDiff(rem,q),p(i))/Fac(q);
  for j=q:-1:1, d(i)=d(i)-d(i+j)*PolyVal(ad{j},p(i))/Fac(j); end
  d(i)=d(i)/PolyVal(a,p(i));
end, if ~flag, k=k(1:n); else, n=n+1; p(n,1)=1; d(n,1)=div; end
end % function PartialFractionExpansion

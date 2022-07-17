function [Li_num,Li_den]=PolylogarithmNegativeInverse(n,c)
% function [Li_num,Li_den]=PolylogarithmNegativeInverse(n,c)
% Compute Li_{-n}(c/z) for integer n>=0 as a rational function of z.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section B.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAB">Appendix B</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Depends on <a href="matlab:help PolyPower">PolyPower</a>, <a href="matlab:help Choose">Choose</a>, <a href="matlab:help Fac">Fac</a>.
% Test with <a href="matlab:help PolylogarithmNegativeInverseTest">PolylogarithmNegativeInverseTest</a>.

Li_num=[]; Li_den=PolyPower([1/c -1],n+1);
for k=n:-1:0, Li_num=[0 Li_num]+Fac(k)*StirlingNumber(n+1,k+1)*PolyPower([1/c -1],n-k); end
Li_num=Li_num/Li_den(1); Li_den=Li_den/Li_den(1);
end % function PolylogarithmNegativeInverse
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function s=StirlingNumber(n,k)
s=0; for j=0:k, s=s+(-1)^(k-j)*Choose(k,j)*j^n; end, s=s/Fac(k);
end % function StirlingNumber
function [D,index]=SortComplex(D,Trait,Alg) 
% function [D,index]=SortComplex(D,Trait,Alg)
% Sort a matrix D based on the 'absolute value' or 'real part' (specified by Trait) of the
% complex elements in its first column, using 'QuickSort', etc (specified by Alg).
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% Test with <a href="matlab:help PartialFractionExpansionTest">SortComplexTest</a>.

if nargin<3, Alg=str2func('QuickSort'); if nargin<2, Trait='real part'; end, end
switch Trait, case 'absolute value', D=[abs(D) D]; case 'real part', D=[real(D) D]; end
n=length(D); if nargout>1, [D,index]=Alg(D,0,n); else, D=Alg(D,0,n); end, D=D(:,2:end);
end % function SortComplex

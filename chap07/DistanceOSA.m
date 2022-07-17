function dist=DistanceOSA(s,t,verbose)
% function dist=DistanceOSA(s,t,verbose)
% Compute the Optimal String Alignment distance between two strings, with equal cost for
% Deletion (D), Insertion (I), Substitution (S), and Exchange of adjacent symbols (E).
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.6.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also DistanceDL.  Verify with DistanceOSAtest.

sl=length(s); tl=length(t); if sl==0 | tl==0, dist=sl+tl; return, end, d=zeros(sl+1,tl+1);
for i=0:sl, d(i+1,1)=i; end, for j=0:tl, d(1,j+1)=j; end   % Initialize pure D and pure I.
for j=2:tl+1, for i=2:sl+1                               
  d(i,j)=min([d(i-1,j)+1, d(i,j-1)+1, d(i-1,j-1)+(s(i-1)~=t(j-1))]); % Cost of D, I, or S.
  if i>2 && j>2 && s(i-2)==t(j-1) && s(i-1)==t(j-2)
    d(i,j) = min([ d(i,j), d(i-2,j-2)+1 ]);                          % Cost of E.
  end
end, end, dist=d(sl+1,tl+1); if nargin>2, d, end
end % function DistanceOSA
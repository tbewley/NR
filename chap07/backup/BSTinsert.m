function [D,r]=NR_BSTinsert(D,n,r)
% function [D,r]=NR_BSTinsert(D,n,r)
% Insert record n into a NR_BST in D with root r, balancing the affected ancestors as needed.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_BSTinitialize, NR_BSTrotateLR, NR_BSTrotateL, NR_BSTrotateR, NR_BSTbalance, NR_BSTenumerate,
% NR_BSTsuccessor.  Verify with NR_BSTtest.

flag=1; m=r; while flag, if D(n,1)<D(m,1) % Find appropriate open child slot & place record
  if D(m,end-3)==0, D(m,end-3)=n; D(n,end-2)=-m; flag=0; else, m=D(m,end-3); end
else
  if D(m,end-1)==0, D(m,end-1)=n; D(n,end-2)=+m; flag=0; else, m=D(m,end-1); end
end, end
flag=1; while m>0 & flag                  % Scan through ancestors of inserted record,
  gold=D(m,end); [D,m]=NR_BSTrotateLR(D,m);  % rotate if helpful to keep balanced,
  a=D(m,end-3); if a>0, Dag=D(a,end); else, Dag=-1; end  % and update generation count.
  c=D(m,end-1); if c>0, Dcg=D(c,end); else, Dcg=-1; end, g=max(Dag+1,Dcg+1);
  D(m,end)=g; n=m; m=abs(D(n,end-2));     % Exit loop if generation count at this level
  if g==gold, flag=0; end                 % is unchanged by the insertion.
end                                       
if m==0; r=n; end      % If scanned all the way back to root, the root might have changed.
end % function NR_BSTinsert                                   

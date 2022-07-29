function [D,b]=NR_BSTrotateR(D,d)
% function [D,b]=NR_BSTrotateR(D,d)
% Apply a right rotation to a NR_BST at record d (see Figure 7.7).  (NR_BSTrotateL is similar.)
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTrotateLR, NR_BSTrotateL, NR_BSTbalance, NR_BSTenumerate,
% NR_BSTsuccessor.  Verify with NR_BSTtest.

b=D(d,end-3); a=D(b,end-3); c=D(b,end-1); e=D(d,end-1); p=D(d,end-2);
if a>0, Dag=D(a,end);                else, Dag=-1; end 
if c>0, Dcg=D(c,end); D(c,end-2)=-d; else, Dcg=-1; end 
if e>0, Deg=D(e,end);                else, Deg=-1; end 
D(d,end-3)=c; D(d,end-2)=+b; D(d,end)=max(Dcg+1,Deg+1);
D(b,end-1)=d; D(b,end-2)=p;  D(b,end)=max(Dag+1,D(d,end)+1);
s=sign(p); p=abs(p); if p>0, D(p,end-2+s)=b; end
while p>0, a=D(p,end-3); if a>0, Dag=D(a,end); else, Dag=-1; end
           c=D(p,end-1); if c>0, Dcg=D(c,end); else, Dcg=-1; end, g=max(Dag+1,Dcg+1);
           if g<D(p,end), D(p,end)=g; p=abs(D(p,end-2)); else, p=0; end, end
end % function NR_BSTrotateR                               

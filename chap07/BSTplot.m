function NR_BSTplot(D,r,x,y)
% function NR_BSTplot(D,r,x,y)
% Plot a NR_BST so that the user can understand its structure and watch it evolve.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also NR_BSTinitialize, NR_BSTinsert, NR_BSTrotateLR, NR_BSTrotateL, NR_BSTrotateR, NR_BSTbalance,
% NR_BSTenumerate, NR_BSTsuccessor.  Verify with NR_BSTtest.

if nargin==2;
  x=0; y=0; figure(2); clf; axis([-4.09 4.09 -10.21 0.5]); axis off; hold on;
end
s=D(r,end-3); if s>0; xn=x-1/2^(y-1); plot([x xn],[-y -y-1]); NR_BSTplot(D,s,xn,y+1), end
s=D(r,end-1); if s>0; xn=x+1/2^(y-1); plot([x xn],[-y -y-1]); NR_BSTplot(D,s,xn,y+1), end
fill([-.1 .1 .1 -.1]+x,[.2 .2 -.2 -.2]-y,'y'), text(x-0.04,-y,sprintf('%2d',D(r,end)))
end % function NR_BSTplot                                   

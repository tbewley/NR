% Set up the Diophantine problem in NR Example 19.9
b=[1 0 -4]; a=[1 0 -10 0 9];

[g,q,n,a,b] = GCF(a,b)     % Apply Euclid's alorithm to find the GCF g
[x,y] = Bezout(a,b,g,q,n)  % Apply the extended Euclidean algorithm to solve a+by=g

% Now compute the solution {x1,y1} of the Diophantine equation a x1 + b y1 = f1.
f1=PolyConv([1 1],[1 1],[1 3],[1 3])
[x1,y1] = Diophantine(a,b,g,PolyDiv(f1,g),x,y)
f1t=PolyAdd(PolyConv(a,x1),PolyConv(b,y1)); residual=norm(PolyAdd(f1,-f1t))
disp(' '), pause

% Now compute the solution {x2,y2} of the Diophantine equation a x1 + b y1 = f2.
f2=PolyConv([1 1],[1 1],[1 3],[1 3],[1 30],[1 30],[1 30],[1 30])
[x2,y2] = Diophantine(a,b,g,PolyDiv(f2,g),x,y)
f2t=PolyAdd(PolyConv(a,x2),PolyConv(b,y2)); residual=norm(PolyAdd(f2,-f2t))
disp(' '), pause

% Set up the Diophantine problem in NR Example 19.13
b=[0.0306 0.0455]; a=[1 -3.9397 3.3201];
[g,q,n,a,b] = GCF(a,b)
[x,y] = Bezout(a,b,g,q,n)
f3=[1 0 0 0];
[x3,y3] = Diophantine(a,b,g,PolyDiv(f3,g),x,y)
f3t=PolyAdd(PolyConv(a,x3),PolyConv(b,y3)); residual=norm(PolyAdd(f3,-f3t))
disp(' ')

b=[1 -1 -2], a=[1 2 -13 -14 24], f=[1 8 22 24 9]
[g,q,n,a,b] = GCF(a,b)
q{1}, q{2}, q{3}
[x,y] = Bezout(a,b,g,q,n)
test1=PolyAdd(PolyConv(a,x),PolyConv(b,y)); res1=norm(PolyAdd(g,-test1))
[x3,y3] = Diophantine(a,b,g,PolyDiv(f,g),x,y)
test2=PolyAdd(PolyConv(a,x3),PolyConv(b,y3)); res2=norm(PolyAdd(f,-test2))
disp(' ')

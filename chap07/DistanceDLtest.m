% script <a href="matlab:DistanceDLtest">DistanceDLtest</a>
% Test <a href="matlab:help DistanceDL">DistanceDL</a> on a couple of string pairs.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.6.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

W.S=1; W.I=1; W.D=1; W.C=1; W.E=1;
a='CA', b='ABC', DL1=DistanceDL(a,b,W,1), disp(' ')  % Test from Wikipedia's DL page.
a='HURQBOHP', b='QKHOZ', DL2=DistanceOSA(a,b), disp(' ')
a='abcdefghabcdefgh', b='bdafchebgdafcheg', W.S=1; W.I=1; W.D=2; W.C=4; W.E=4;
DL3w=DistanceDL(a,b,W)               % Test (4) from Lowrance & Wagner (1975).
DL3e=DistanceDL(a,b), disp(' ')      % Modified test with equal weights.

% end script DistanceDLtest

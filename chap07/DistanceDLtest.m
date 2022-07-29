% script <a href="matlab:NR_DistanceDLtest">NR_DistanceDLtest</a>
% Test <a href="matlab:help NR_DistanceDL">NR_DistanceDL</a> on a couple of string pairs.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

W.S=1; W.I=1; W.D=1; W.C=1; W.E=1;
a='CA', b='ABC', DL1=NR_DistanceDL(a,b,W,1), disp(' ')  % Test from Wikipedia's DL page.
a='HURQBOHP', b='QKHOZ', DL2=NR_DistanceOSA(a,b), disp(' ')
a='abcdefghabcdefgh', b='bdafchebgdafcheg', W.S=1; W.I=1; W.D=2; W.C=4; W.E=4;
DL3w=NR_DistanceDL(a,b,W)               % Test (4) from Lowrance & Wagner (1975).
DL3e=NR_DistanceDL(a,b), disp(' ')      % Modified test with equal weights.

% end script NR_DistanceDLtest

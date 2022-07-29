% script <a href="matlab:NR_DistanceDLtest">NR_DistanceOSAtest</a>
% Test <a href="matlab:help NR_DistanceDL">NR_DistanceOSA</a> on a couple of string pairs.
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

a='CA', b='ABC', OSA1=NR_DistanceOSA(a,b,1), disp(' ')  % Test from Wikipedia's DL page.
a='HURQBOHP', b='QKHOZ', OSA2=NR_DistanceOSA(a,b), disp(' ')
a='abcdefghabcdefgh', b='bdafchebgdafcheg', OSA3=NR_DistanceOSA(a,b), disp(' ')

% end script NR_DistanceOSAtest

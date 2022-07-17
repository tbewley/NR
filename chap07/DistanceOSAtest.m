% script <a href="matlab:DistanceDLtest">DistanceOSAtest</a>
% Test <a href="matlab:help DistanceDL">DistanceOSA</a> on a couple of string pairs.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 7.1.6.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap07">Chapter 7</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

a='CA', b='ABC', OSA1=DistanceOSA(a,b,1), disp(' ')  % Test from Wikipedia's DL page.
a='HURQBOHP', b='QKHOZ', OSA2=DistanceOSA(a,b), disp(' ')
a='abcdefghabcdefgh', b='bdafchebgdafcheg', OSA3=DistanceOSA(a,b), disp(' ')

% end script DistanceOSAtest

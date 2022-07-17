% script <a href="matlab:FFTnonreorderedTest">FFTnonreorderedTest</a>
% Test <a href="matlab:help FFTnonreordered">FFTnonreordered</a> with random u.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 5.4.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap05">Chapter 5</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also FFTrecursiveTest, FFTdirectTest.

N=8; u=randn(N,1);
disp('Now testing FFTdirect on a random real vector')
uhat=FFTdirect(u,N,-1); u1=FFTdirect(uhat,N,1); 
transformed_reordered=uhat.', transform_error=norm(u-u1), disp(' ');

disp('Now testing FFTnonreordered on a random real vector')
uhat=FFTnonreordered(u,N,-1); u1=FFTnonreordered(uhat,N,1);
transformed_nonreordered=uhat.', transform_error=norm(u-u1), 
disp('Note: the transformed coefficients are precisely the same as those returned by');
disp('FFTdirect, but in a different (that is, bit-reversed) order.'); disp(' ');
                                               
% end script FFTnonreorderedTest

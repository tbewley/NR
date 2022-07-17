% script <a href="matlab:RFSTtest">RFSTtest</a>
% Test <a href="matlab:help RFST">RFST</a> and <a href="matlab:help RFSTinv">RFSTinv</a> with random u.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 5.11.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap05">Chapter 5</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also RFFTtest, RFCTtest.

disp('Now testing RFST and RFSTinv on a random real vector')
N=8; u=randn(N-1,1); uhats=RFST(u,N); u1=RFSTinv(uhats,N);
original_u=u.', transformed=uhats.', transformed_back=u1.'
mean_square_of_u        =norm(u)^2/N
sum_of_squares_of_uhats =norm(uhats)^2/2
transform_error = norm(u-u1)
parseval_error  = (mean_square_of_u-sum_of_squares_of_uhats)^2                                                      

% end script RFFTtest

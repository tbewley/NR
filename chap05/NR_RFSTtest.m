% script <a href="matlab:NR_RFSTtest">NR_RFSTtest</a>
% Test <a href="matlab:help NR_RFST">NR_RFST</a> and <a href="matlab:help NR_RFSTinv">NR_RFSTinv</a> with random u.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 5.11.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap05">Chapter 5</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_RFFTtest, NR_RFCTtest.

disp('Now testing RFST and RFSTinv on a random real vector')
N=8; u=randn(N-1,1); uhats=NR_RFST(u,N); u1=NR_RFSTinv(uhats,N);
original_u=u.', transformed=uhats.', transformed_back=u1.'
mean_square_of_u        =norm(u)^2/N
sum_of_squares_of_uhats =norm(uhats)^2/2
transform_error = norm(u-u1)
parseval_error  = (mean_square_of_u-sum_of_squares_of_uhats)^2                                                      

% end script NR_RFFTtest

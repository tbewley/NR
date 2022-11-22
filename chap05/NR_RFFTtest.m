% script <a href="matlab:RFFTtest">NR_RFFTtest</a>
% Test <a href="matlab:help RFFT">NR_RFFT</a> and <a href="matlab:help NR_RFFTinv">NR_RFFTinv</a> with random u.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 5.5.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap05">Chapter 5</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_RFFT2Test, NR_RFFT1test.

disp('Now testing NR_RFFT and NR_RFFTinv on a random real vector')
N=16; u=randn(N,1); uhat=NR_RFFT(u,N); u1=NR_RFFTinv(uhat,N);
original_u=u.', transformed=uhat.', transformed_back=u1.'
mean_of_u              =sum(u)/N
zero_wavenumber_of_uhat=real(uhat(1))
mean_square_of_u       =norm(u)^2/N
sum_of_squares_of_uhat =norm(real(uhat(1)))^2+norm(imag(uhat(1)))^2+2*norm(uhat(2:end))^2
transform_error = norm(u-u1)
mean_value_error= (mean_of_u-zero_wavenumber_of_uhat)^2
parseval_error  = (mean_square_of_u-sum_of_squares_of_uhat)^2                                                      
                                                                                                        
% end script NR_RFFTtest
% script <a href="matlab:SampleMatlabBuiltInFns">SampleMatlabBuiltInFns</a>
% This sample script finds the eigenvalues and eigenvectors of a few random matrices
% constructed with special structure.  This sample script uses Matlab's built-in commands
% <a href="matlab:doc inv">inv</a> and <a href="matlab:doc eig">eig</a> (lower case).
% NR develops, from first principles, alternatives to matlab's built-in commands, such as
% <a href="matlab:help Inv">Inv</a> and <a href="matlab:help Eig">Eig</a> (mixed case).
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.

clear, R = randn(4), eigenvalues = eig(R)
disp('As R has random real entries, it may have real or complex eigenvalues.')
disp('Press return to continue'), pause, R_plus_Rprime = R+R',  eigenvalues = eig(R+R')
disp('Notice that R+R'' is symmetric, with real eigenvalues.')
disp('Press return to continue'), pause, R_minus_Rprime = R-R', eigenvalues = eig(R-R')
disp('The matrix R-R'' is skew-symmetric, with pure imaginary eigenvalues.')
disp('Press return to continue'), pause, Rprime_times_R = R'*R, [S,Lambda] = eig(R'*R)
disp('This matrix R''*R is symmetric, with real POSITIVE eigenvalues.')
disp('Press return to continue'), pause, R_times_Rprime = R*R', [S,Lambda] = eig(R*R')
disp('R*R'' has the same eigenvalues as R''*R, but different eigenvectors.')
disp('Press return to continue'), pause, S = rand(4);  Lambda = diag([1 2 3 4]);
A = S * Lambda * inv(S),  eigenvalues_of_A = eig(A)
disp('You can also create a matrix with desired eigenvalues (say, 1, 2, 3, 4)')
disp('from A=S Lambda inv(S) for any invertible S.'), disp(' ')
% end script SampleMatlabBuiltInFns

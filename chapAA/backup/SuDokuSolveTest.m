% script <a href="matlab:SuDokuSolveTest">SuDokuSolveTest</a>
% Test <a href="matlab:help SuDokuSolve">SuDokuSolve</a> on a couple of SuDoku problems.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

format compact
A=[0 2 0 1 4 0 0 0 0; 5 0 0 2 3 0 0 9 0; 8 0 0 0 0 0 1 7 0; ...
   0 0 3 6 0 1 0 8 0; 0 4 0 0 8 0 0 6 0; 0 0 0 4 0 3 5 0 0; ...
   0 9 5 0 0 0 0 0 8; 0 1 0 0 5 2 0 0 7; 0 0 0 0 1 6 0 3 5];
SuDokuSolve(A)  
disp('Press a key to continue'); pause;
B=[0 0 1 0 0 3 6 0 0; 0 7 0 0 0 5 0 0 2; 6 0 0 0 0 0 0 0 0; ...
   0 0 5 1 0 0 0 8 0; 3 0 0 8 0 0 0 0 1; 0 4 0 0 0 0 9 0 0; ...
   0 0 0 0 0 0 0 0 3; 2 0 0 4 0 0 0 1 0; 0 0 7 6 0 0 5 0 0];
SuDokuSolve(B)

% end script SuDokuSolveTest

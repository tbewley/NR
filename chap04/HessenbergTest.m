% script <a href="matlab:NR_HessenbergTest">NR_HessenbergTest</a>
% Test <a href="matlab:help NR_Hessenberg">NR_Hessenberg</a> on a random matrix.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing NR_Hessenberg on a random matrix.')
A=rand(8), [T,V]=NR_Hessenberg(A), error=norm(A-V*T*V'), disp(' ')

% end script NR_HessenbergTest

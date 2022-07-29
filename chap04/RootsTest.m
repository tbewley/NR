% script <a href="matlab:NR_RootsTest">NR_RootsTest</a>
% Test <a href="matlab:help NR_Roots">NR_Roots</a> on a couple of specified polynomials.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 4.4.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap04">Chapter 4</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now testing NR_Roots on a couple of specified polynomials.')
a=NR_Roots([1 -1 0 0 -1 1]), for i=1:5; res(i)=a(i)^5-a(i)^4-a(i)+1; end, residual_a=norm(res)
b=NR_Roots([1  0 0 0 -1 1]), for i=1:5; res(i)=b(i)^5       -b(i)+1; end, residual_b=norm(res)
disp(' ')

% end script NR_RootsTest

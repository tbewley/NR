% script <a href="matlab:PolyInertiaTest">PolyInertiaTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section B.2.6.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAB">Appendix B</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

p=[1 2 8 12 20 16 16], PolyInertia(p); check_roots_of_p=roots(p)

% end script PolyInertiaTest

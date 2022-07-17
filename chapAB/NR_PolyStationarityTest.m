% script <a href="matlab:PolyStationarityTest">PolyStationarityTest</a>
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section B.2.7.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAB">Appendix B</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

p=PolyConv([1 2 3 4 0],[1 1 1],[2 1],[1 2],[1 -1])
PolyStationarity(p); check_roots_of_p=roots(p), magnitude_of_roots=abs(check_roots_of_p)

% end script PolyStationarityTest

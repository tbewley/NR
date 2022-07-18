% script <a href="matlab:SwapTest">SwapTest</a>
% Test the curiously simple code <a href="matlab:help Swap">Swap</a> on a random couple of variables.
% See <a href="matlab:NRweb">Numerical Renaissance</a>, Appendix A, for further discussion.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchapAA">Appendix A</a>; see webpage for <a href="matlab:help NRcopyleft">copyleft info</a>.                                                                   

a=randn, b=randn(2), [a,b]=Swap(a,b); a, b, disp(' ')

% end script SwapTest

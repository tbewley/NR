function [u]=RFSTinv(uhatS,N)
% function [u]=RFSTinv(uhatS,N)
% Compute the inverse FST via applciation of Fact 5.6.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 5.11.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap05">Chapter 5</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also RFST.  Verify with: RFSTtest.

u=RFST(uhatS,N)*N/2;     
end % function RFSTinv

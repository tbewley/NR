function [u]=NR_RFSTinv(uhatS,N)
% function [u]=NR_RFSTinv(uhatS,N)
% Compute the inverse FST via applciation of Fact 5.6.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 5.11.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap05">Chapter 5</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.
% See also NR_RFST.  Verify with: NR_RFSTtest.

u=NR_RFST(uhatS,N)*N/2;     
end % function NR_RFSTinv

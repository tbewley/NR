% script <a href="matlab:TaylorTableTest">TaylorTableTest</a>
% Test <a href="matlab:help TaylorTable">TaylorTable</a> by constructing various differentiation formulae from Chapter 10.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 8.1.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap08">Chapter 8</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.

disp('Now computing the BDF formulae (Table 10.3)'), w=1; format short
x=[0 -1];                [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1),     f=1/c(1)
x=[0 -1 -2];             [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1)*3,   f=1/c(1)*3
x=[0 -1 -2 -3];          [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1)*11,  f=1/c(1)*11
x=[0 -1 -2 -3 -4];       [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1)*25,  f=1/c(1)*25
x=[0 -1 -2 -3 -4 -5];    [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1)*137, f=1/c(1)*137
x=[0 -1 -2 -3 -4 -5 -6]; [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1)*147, f=1/c(1)*147

disp('Now computing the eBDF formulae (Table 10.4)'), w=1;
x=[1 0];                 [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1),     f=1/c(1)
x=[1 0 -1];              [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1),     f=1/c(1)
x=[1 0 -1 -2];           [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1),     f=1/c(1)
x=[1 0 -1 -2 -3];        [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1),     f=1/c(1)
x=[1 0 -1 -2 -3 -4];     [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1),     f=1/c(1)
x=[1 0 -1 -2 -3 -4 -5];  [c]=TaylorTable(x,w)'; d=-c(2:end)/c(1),     f=1/c(1)

% end script TaylorTableTest

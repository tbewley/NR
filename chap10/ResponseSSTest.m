% script <a href="matlab:ResponseSSTest">ResponseSSTest</a>
% Test <a href="matlab:help ResponseSS">ResponseSS</a> by plotting the impulse, step, and ramp response of an oscillatory LTI system.
% See <a href="matlab:NRweb">Numerical Renaissance: simulation, optimization, & control</a>, Section 10.1.
% Part of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>, <a href="matlab:help NRchap10">Chapter 10</a>; please read the <a href="matlab:help NRcopyleft">copyleft</a>.


A = [-12 -20 -1 -.3; 1 0 0 0; 0 1 0 0; 0 0 1 0];
B = [1; 0; 0; 0]; C=[0 0 1 0.3];  D=0; g.T=200; g.styley='b-';  g.styleu='r--';
figure(1); clf; ResponseSS(A,B,C,D,0,g), title('Impulse response')
figure(2); clf; ResponseSS(A,B,C,D,1,g), title('Step response')
figure(3); clf; ResponseSS(A,B,C,D,2,g), title('Ramp response')

% end script ResponseSSTest

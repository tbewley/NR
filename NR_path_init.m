% script RC_path_init
% Initialize the path environment for using the Numerical Renaissance (RC) codebase.
% You can check your path in Matlab at any time by typing "path".
%
% Since the RC codebase builds on the RR codebase, you must also download and install that.
%
% You should call both the RR and RC path init codes automatically when firing up Matlab on your computer,
% by appending calls to RR_path_init and RC_path_init in the startup.m file of your userpath directory.
% Matlab provides guidance on this subject here:  https://www.mathworks.com/help/matlab/ref/startup.html
%
% In short, fire up Matlab, and type the command 'userpath', which will return the name of a directory.
% WITHIN THAT DIRECTORY (important!), edit the file startup.m (or, create a file of this name
% if one doesn't already exist); this file should contain (at least) the following two lines:
%    RRbase='/Users/bewley/RR'; cd(RRbase); RR_path_init
%    RCbase='/Users/bewley/RC'; cd(RCbase); RC_path_init
% NOTE: replace the directory names in single quotes above with the full paths to the locations
% that you have installed the RR and RC codebases on your computer.  Note that forward slashes (/),
% as shown above, are used on Macs, whereas backslashes (\) are used in Windows; on a Windows machine,
% the full path to one of these directories might look something like, e.g., 'C:\Users\bewley\RC'
% Note you can also put other commonly needed Matlab initialization commands in your startup.m file.
%
% Renaissance Codebase, https://github.com/tbewley/RC
% Copyright 2023 by Thomas Bewley, distributed under BSD 3-Clause License.

format compact, close all
% IMPORTANT: modify the definition of RCbase in the startup.m code (see above) to indicate the
% full path to the RC codebase on your computer.
addpath(strcat(RCbase,'/chap01'),strcat(RCbase,'/chap02'),strcat(RCbase,'/chap03'), ...
        strcat(RCbase,'/chap04'),strcat(RCbase,'/chap05'),strcat(RCbase,'/chap06'), ...
        strcat(RCbase,'/chap07'),strcat(RCbase,'/chap08'),strcat(RCbase,'/chap09'), ...
        strcat(RCbase,'/chap10'),strcat(RCbase,'/chap11'),strcat(RCbase,'/chap12'), ...
        strcat(RCbase,'/chap13'),strcat(RCbase,'/chap14'),strcat(RCbase,'/chap15'), ...
        strcat(RCbase,'/chap16'),strcat(RCbase,'/chap17'),strcat(RCbase,'/chap18'),RCbase)
disp("Path set for using the Numerical Renaissance (RC) codebase.")
disp("Note: please use GitHub Desktop to keep "+RCbase)
disp("in sync with the main RC repository at https://github.com/tbewley/RR"+newline)
% end script RC_path_init
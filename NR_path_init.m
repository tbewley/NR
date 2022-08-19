% script NR_path_init
% Initialize the path environment for using the Numerical Renaissance (NR) codebase.
% You can check your path in Matlab at any time by typing "path".
%
% You should call the RR and NR path init codes automatically when firing up Matlab on your computer,
% by appending calls to RR_path_init and NR_path_init in the startup.m file of your userpath directory.
% Matlab provides guidance on this subject here:  https://www.mathworks.com/help/matlab/ref/startup.html
%
% In short, fire up Matlab, and type the command 'userpath', which will return the name of a directory.
% WITHIN THAT DIRECTORY (important!), edit the file startup.m (or, create a file of this name
% if one doesn't already exist); this file should contain (at least) the following two lines:
%    RRbase='/Users/bewley/RR'; cd RRbase; RR_path_init
%    NRbase='/Users/bewley/NR'; cd NRbase; NR_path_init
% NOTE: replace the directory names in single quotes above with the full paths to the locations
% that you have installed the RR and NR codebases on your computer.  Note that forward slashes (/),
% as shown above, are used on Macs, whereas backslashes (\) are used in Windows; on a Windows machine,
% the full path to one of these directories might look something like, e.g., 'C:\Users\bewley\RR'
% Note you can also put other commonly needed Matlab initialization commands in your startup.m file.
%
% Numerical Renaissance codebase, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License.

format compact, close all
% IMPORTANT: modify the definition of NRbase in the startup.m code (see above) to indicate the
% full path to the NR codebase on your computer.
addpath(strcat(NRbase,'/chap01'),strcat(NRbase,'/chap02'),strcat(NRbase,'/chap03'), ...
        strcat(NRbase,'/chap04'),strcat(NRbase,'/chap05'),strcat(NRbase,'/chap06'), ...
        strcat(NRbase,'/chap07'),strcat(NRbase,'/chap08'),strcat(NRbase,'/chap09'), ...
        strcat(NRbase,'/chap10'),strcat(NRbase,'/chap11'),strcat(NRbase,'/chap12'), ...
        strcat(NRbase,'/chap13'),strcat(NRbase,'/chap14'),strcat(NRbase,'/chap15'), ...
        strcat(NRbase,'/chap16'),strcat(NRbase,'/chap17'),strcat(NRbase,'/chap18'),NRbase)
disp("Path set for using the Numerical Renaissance (NR) codebase.")
disp("Note: please use GitHub Desktop to keep "+NRbase)
disp("in sync with the main NR repository at https://github.com/tbewley/RR"+newline)
% end script NR_path_init
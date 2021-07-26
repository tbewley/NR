% script NR_path_init
% Initialize the path environment for using the Numerical Renaissance (NR) codebase.
% You can check your path in Matlab at any time by typing "path".
% PRO TIP: call this init code automatically when firing up Matlab or Octave by appending
% to the startup.m file in your Matlab or Octave installation as follows:
%   /bin/zsh
%     export NRbase="~/NR/"
%     echo "cd" $NRbase"; NR_path_init" >> ~/Documents/MATLAB/startup.m
%   exit
% IMPORTANT: modify the definition of NRbase in the above zsh commands as needed.
% Numerical Renaissance codebase, https://github.com/tbewley/NR
% Copyright 2021 by Thomas Bewley, distributed under BSD 3-Clause License.

format compact, close all, cd ~
% IMPORTANT: modify the definition of NRbase below as needed:
NRbase='~/NR/';
addpath(strcat(NRbase,'/chap01'),strcat(NRbase,'/chap02'),strcat(NRbase,'/chap03'), ...
        strcat(NRbase,'/chap04'),strcat(NRbase,'/chap05'),strcat(NRbase,'/chap06'), ...
        strcat(NRbase,'/chap07'),strcat(NRbase,'/chap08'),strcat(NRbase,'/chap09'), ...
        strcat(NRbase,'/chap10'),strcat(NRbase,'/chap11'),strcat(NRbase,'/chap12'), ...
        strcat(NRbase,'/chap13'),strcat(NRbase,'/chap14'),strcat(NRbase,'/chap15'), ...
        strcat(NRbase,'/chap16'),strcat(NRbase,'/chap17'),strcat(NRbase,'/chap18'), ...
        strcat(NRbase,'/chapAA'),strcat(NRbase,'/chapAB'),NRbase)
disp(newline+"Path set for using the Numerical Renaissance codebase.")
disp("Note: please use GitHub Desktop to keep your local directory at ")
disp("           "+NRbase)
disp("in sync with the base branch of the Numerical Renaissance codebase repository at")
disp("           https://github.com/tbewley/NR")
disp("See appendix A of the Numerical Renaissance text for further info."+newline)
clear NRbase

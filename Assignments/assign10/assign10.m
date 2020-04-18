%{
Drew Dunn, none
none
assign10.m
April 17, 2020
Collaboration Statement: Heavy reliance on MathWorks documentation, as well as heavy referencing of 
user-defined functions and plotting sections of MATLAB book.
This file retrieves data from the specified file, and takes only relevant
data for the function(s) in reportGraph.m, it is given printed data back
after it calls the parent function 'reportGraph'.
%}
clc, clear all
format short
format compact


% ***** CONSTANT *****
FILENAME = 'assign10_2019_SB_season.txt'; % file with required information

% does file exist?
if ~exist(FILENAME, 'file')
    disp('File not available');
else    
    % file exist continue
% ***** INPUT *****
% Does not read in the string elements in .txt file
[dates(:,1), dates(:,2),... %dates matrix from .txt file.
     confString, locationString,... %conference and location matrix from .txt file.
     opponentString,... %opponent matrix from .txt file.
    scores(:,1),scores(:,2)]... %score matrix from .txt file.
    = textread(FILENAME, '%f%f%s%s%s%f%f%*f%*f%*f%*f'); %formatted to not read in string elements.
% ***** COMPUTE *****
% all computing and sorting is done in the report graph file.

% ***** OUTPUT *****
%calls main function of reportGraph.m which also contains graphing function.
reportGraph( dates, confString, locationString, opponentString, scores);

end
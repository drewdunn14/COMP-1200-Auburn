%{
Drew Dunn, none
none
assign08.m
April 3, 2020
Collaboration Statement: Heavy Usage and reference to Input and Output data
files on canvas, as well as heavy usage of function examples and textread()
examples
Assign08 is given a collection of data/statistics from the AU softball
team's 2020 season. Once the file has been found to exist, textread is used
to retrieve desired values. These values are then passed into the
reportGraph.m file where it is concatenated, averaged, and printed in a
legible and formatted fashion by a function and subfunction.
%}
clc, clear all
format short
format compact



% ***** CONSTANT *****
FILENAME = 'AU_SB_2020_08.txt'; % file with required information

% does file exist?
if ~exist(FILENAME, 'file')
    disp('File not available');
else    
    % file exist continue
% ***** INPUT *****

% Does not read in the string elements in .txt file
[date(:,1), date(:,2),... %dates matrix from txt file.
    scores(:,1),scores(:,2),... %score matrix from .txt file.
    stats(:,1), stats(:,2), stats(:,3), stats(:,4)]... %stats matrix from .txt file.
    = textread(FILENAME, '%f%f%*s%*s%f%f%f%f%f%f'); %formatted to not read in string elements.
% ***** COMPUTE *****
stats(:,5) = (stats(:,3) ./ stats(:,1)); %batting average for each individual game is added to matrix.

% ***** OUTPUT *****
reportGraph( date, scores, stats); %invoking function prints tabular data as well as graph.

end
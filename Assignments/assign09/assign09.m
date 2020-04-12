%{
Drew Dunn, none
none
assign09.m
April 10, 2020
Collaboration Statement: Heavy reliance on subfunction section in MATLAB
book, as 
Assign09.m checks to see if a file is in the current directory, it then
either displays an error message if the file is not available, or it then
scans in the data for a season of softball that includes date, opponent,
and score. After this it passes this information into the reportGraph
function which does almost all of the work as far as sorting and computing
totals.
%}
clc, clear all
format short
format compact



% ***** CONSTANT *****
FILENAME = 'AU_SB_2020_09.txt'; % file with required information

% does file exist?
if ~exist(FILENAME, 'file')
    disp('File not available');
else    
    % file exist continue
% ***** INPUT *****
% Does not read in the string elements in .txt file
[dates(:,1), dates(:,2),... %dates matrix from .txt file.
    locationString, opponentString,... %opponent matrix from .txt file.
    scores(:,1),scores(:,2)]... %score matrix from .txt file.
    = textread(FILENAME, '%f%f%s%s%f%f%*f%*f%*f%*f'); %formatted to not read in string elements.
% ***** COMPUTE *****
% all computing and sorting is done in the report graph file.

% ***** OUTPUT *****
%calls main function of reportGraph.m which also contains graphing function.
reportGraph( dates, scores, locationString , opponentString );

end
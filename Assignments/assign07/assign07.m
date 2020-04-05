%{
Drew Dunn, none
none
assign07.m
March 23, 2020
Collaboration Statement: Heavy Usage and reference to Input and Output data
files on canvas, as well as plotting/subfunction chapters of book to understand
printReport() & plotData().
Assign07 does much of the same as assign06, but it is not given a value at
the top of .txt file. Instead, I used feof() as the rubric indicated to
stop the while loop once the fscanf() reads all the values. Once the values
are read in, the frontal area is calculated and concatenated. Once, these
have been prepared it is passed into the function and subfunction within
printReport() it is formatted and plotted for user viewing.
%}
clc, clear all
format short
format compact

% ***** CONSTANT *****
FILENAME = 'dragCoef07.txt'; % file with required information
VELOCITY = 25; % Kilometers/Hour
HORIZONTAL_FORCE = 350; % Newtons
AIR_DENSITY = 1.225; % Kilogram/Cubic Meter

% autonomous function to compute frontal area
getArea = @(coef) (2*HORIZONTAL_FORCE) ./ ( coef * AIR_DENSITY * VELOCITY ^ 2);

% does file exist?
[fid,msg] = fopen(FILENAME,'r');

% file is not found.
if fid == -1
    disp('No such file or directory')
    % file exist continue
    % ***** INPUT *****
else
    dataTable = fopen(FILENAME,'r');
    i = 1;
    while ~feof(dataTable)
        scanDataMatrix( i, 1) = fscanf( dataTable, '%f', 1); % scans year data
        scanDataMatrix( i, 2) = fscanf( dataTable, '%f', 1); % scans drag data
        i = i + 1;
    end
    % close file after have received all the data needed.
    fclose(dataTable);
    
    % pass correct data into coef variable for function use.
    
    % ***** COMPUTE *****
    frontalArea = getArea(scanDataMatrix(:,2)); % meters squared
    
    % add frontal area as third column of matrix
    concatFrontal = [scanDataMatrix, frontalArea];
    
    % although this file is already sorted by year, we will still add  another to guarantee correct data.
    carMatrix = sortrows(concatFrontal, 1);
    
    aveArea = mean(frontalArea); % finds average of frontal Area vector calculated above.
    
    % ***** OUTPUT *****
    printReport(carMatrix, aveArea);
end
%{
Drew Dunn, none
none
assign06.m
March 6, 2020
Collaboration Statement: Heavy usage and reference to notes and files
posted on canvas regarding reading in files using fopen and fscanf.
This script takes a row value in the beginning of the text file and uses it
to scan a set amount of values, it then calculates a frontal value as well
as concatenating it to the scanned file data. It prints the data and
inserts an asterisk next to any frontal value above the average.
%}
clc, clear all
format short
format compact

% ***** CONSTANT *****
FILENAME = 'dragCoef06.txt'; % file with required information
VELOCITY = 25; % Kilometers/Hour
HORIZONTAL_FORCE = 350; % Newtons
AIR_DENSITY = 1.225; % Kilogram/Cubic Meter
columnsInFile = 2; % Number of columns in file that will be loaded

% does file exist?
[fid,msg] = fopen(FILENAME,'r');

if fid == -1
    disp('No such file or directory')
    % file exist continue
    % ***** INPUT *****
else
    
    % read year and drag coefficient from file
    dataFile = fopen(FILENAME,'r');
    rowsInFile = fscanf(dataFile,'%f', 1);
    
    for r = 1:rowsInFile
        for c = 1:columnsInFile
            dataTable(r,c) = fscanf(dataFile,'%f', 1);
        end
    end
    % close file after have received all the data needed.
    fclose(dataFile);
    
      
    % ***** COMPUTE *****
    frontalArea = (HORIZONTAL_FORCE)./((.5).*(AIR_DENSITY).*(VELOCITY ^ 2).*(dataTable(1:rowsInFile,columnsInFile))); % meters squared
    frontalAreaAverage = mean(frontalArea);
    % add frontal area as third column of matrix
    concatFrontal =  [dataTable, frontalArea];
    
    % print table again using fprintf()
    fprintf('             All Cars\n     Year      Drag    Frontal\n');
    fprintf('               Coef    Area(m^2)\n');
   
    % prints row one at a time, any frontal above average gets an asterisk to the right of it
    for printElements = 1:rowsInFile
        if concatFrontal(printElements,3) > frontalAreaAverage
            fprintf('     %4.0f      %1.2f    %1.4f *\n', concatFrontal(printElements,:))
        else 
            fprintf('     %4.0f      %1.2f    %1.4f \n', concatFrontal(printElements,:))
        end
    end
end
fprintf('     * Frontal area above average\n')
%{
Drew Dunn, none
none
assign05.m
February 28, 2020
Collaboration Statement: Heavy usage and reference to MATLAB book,
specifically menu function for formatting and syntax.
This script takes an array of constants such as Velocity, Horizontal Force,
and air density, as well as drag coefficients and year of certain car
models, with these a menu is given and displays both selective data as well
as the data set.
%}
clc, clear all
format short

% ***** CONSTANT *****
FILENAME = 'dragCoef05.txt'; % file with required information
VELOCITY = 25; % Kilometers/Hour
HORIZONTAL_FORCE = 350; % Newtons
AIR_DENSITY = 1.225; % Kilogram/Cubic Meter

% does file exist?
if ~exist(FILENAME, 'file')
    disp('File not available');
else    
    % file exist continue
    % ***** INPUT *****
    % read year and drag coefficient from file
    loadData = load(FILENAME);
    
    % select a car from menu
    carSelection = menu('Choose a car:'... 
        ,'BMW 7','Toyota Tacoma','Tesla 3','Audi A6','Jeep Wrangler','Toyota Corolla');
      disp(['Year of car #'    num2str(carSelection)   ':        ' num2str(loadData(carSelection,1))]); %year of car
      
    % ***** COMPUTE *****
    % compute the frontal area for selecteds and all cars
    frontalArea = (HORIZONTAL_FORCE)./((.5).*(AIR_DENSITY).*(VELOCITY ^ 2).*(loadData(1:6,2))); % meters squared
    % add frontal area as third column of matrix
    concatFrontal =  [loadData, frontalArea];
    % sort matrix by frontal area column ascending order
    sortTableByFrontalRow = sortrows(concatFrontal,3);
    % display the frontal area of chosen area
   disp(['Frontal area of car#'    num2str(carSelection)   ': ' num2str(frontalArea(carSelection,1))]); %frontal area -> meters squared
   disp(' ');
    % display table of drage coefficients and frontal areas
    disp('             All Cars');
    disp('     Year      Drag    Frontal');
    disp('               Coef    Area(m^2)');
    disp(sortTableByFrontalRow);
    
    % print table again using fprintf()
    fprintf('             All Cars\n     Year      Drag    Frontal\n');
    fprintf('               Coef    Area(m^2)');
    yearData = sortTableByFrontalRow(1:6);
    dragData = sortTableByFrontalRow(7:12);
    frontalData = sortTableByFrontalRow(13:18);
    tableFormat = [yearData; dragData; frontalData];
    fprintf('     %4.f      %4.2f    %6.4f\n', tableFormat); %formats each column individually 
end





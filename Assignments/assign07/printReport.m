%{
Drew Dunn, none
none
printReport.m
March 23, 2020
Collaboration Statement: Usage of assign07 rubric to type plotData and
MatLab book to better understand structure diagram and plotting styles.
This function printReport() takes multiple inputs from the file that
assign07 read in and takes them as arguments. With the arguments it is able
to format the values retrieved by the .txt file and plots the data using
the subfunction plotData().
%}


function [] = printReport( carMatrix, aveArea )
 % print report and draw graph

% ***** OUTPUT *****
 % fprintf for formatting purposes, same as assign06.
 fprintf('               All Cars\n   Year      Drag   Frontal\n');
 fprintf('               Coef   Area(m^2)\n');

% loop takes each frontal area, runs it through conditional, adding asterisk if statement is true while printing.
for i = 1:length(carMatrix(:,1))
fprintf( '    %4.0f      %4.2f       %6.4f', carMatrix(i,:) )
  if carMatrix(i,3) > aveArea
    fprintf( ' *\n' )
  else
     fprintf( '\n' )
  end
end

fprintf('* Frontal area above average\n')
plotData (carMatrix (:,1), carMatrix (:,2)) %Specifying input used for plotData() function.
end

%primary function utilizes plotData subfunction.
function [] = plotData( years, dragCoef )
% draw a plot of the years and drag coef
numCars = 1:length( years );
[hAx,hLine1,hLine2] = plotyy( numCars, years, numCars, dragCoef );
title( 'Years .vs Drag Coef' )
xlabel( 'Car number' )
hLine1.LineStyle = '--';
hLine2.LineStyle = ':';
ylabel(hAx(1),'Year')      % left y-axis
ylabel(hAx(2),'Drag Coef') % right y-axis
end
%Not messing with colors or data point styles now.



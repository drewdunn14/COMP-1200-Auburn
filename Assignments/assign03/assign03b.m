%{
Drew Dunn, none
none
assign03b.m
February 7, 2020
Collaboration Statement: Usage of MATLAB book to better understand colon notation.
This script takes a principle amount and a high/low interest input value 
from the user as well as the interval of rates within high/low # using 
colon notation, then calculates it after a time input is given by user, as
well as giving average values.
%}
clc, clear all
format bank
format compact

%***** CONSTANTS *****
% get principle
PRINCIPLE = 4000;         % dollars

%***** INPUT *****
% get interest rate per period range and time from the user
lowInterest = input( 'Enter the low value for the rate range(%): ' ); %percent
maxInterest = input( 'Enter the maximum value for the rate range(%): ' ); %percent
incrementValues = input( 'Enter the increment between rates: ' ); %colon notation increment input
time = input( 'Enter number of years: '); %years
% create rate vector
incrementInterestVector = [lowInterest:incrementValues:maxInterest]; %colon notation format

%***** COMPUTE *****
% compute simple interest ($)
simpleInterest = ((PRINCIPLE .* incrementInterestVector .* time ) ./ 100);

% create a table with rate and simple interest
tableInterest = [incrementInterestVector', simpleInterest'];

% get the average rate and interest
meanTableInterest = mean(tableInterest);

%***** OUTPUT *****
% display simple interest with label
disp('         Rate(%)    Interest($)' );
disp(tableInterest);
disp( ' '); 

% display average rate and interest with label
disp('Average: Rate(%)    Interest($)' );
disp(meanTableInterest);
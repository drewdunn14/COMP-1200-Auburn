%{
Drew Dunn, none
none
assign03a.m
February 7, 2020
Collaboration Statement: Heavy usage and reference to MATLAB book, specifically linspace.
This script takes a principle amount and a high/low interest input value 
from the user as well as the number of rates between given high/low # using 
linspace, then calculates it after a time input is given by user, it also
gives average values using 'mean' function.
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
highInterest = input( 'Enter the high value for the rate range(%): ' ); %percent
numberInterestValues = input( 'Enter the number of rate values. This includes high and low values: ' ); %number of interest values
time = input( 'Enter number of years: '); %years
% create rate vector
interestRatesVector = linspace(lowInterest, highInterest, numberInterestValues);

%***** COMPUTE *****
% compute simple interest ($)
simpleInterest = ((PRINCIPLE .* interestRatesVector .* time ) ./ 100); 

% create a table with rate and simple interest
tableInterest = [interestRatesVector', simpleInterest'];

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











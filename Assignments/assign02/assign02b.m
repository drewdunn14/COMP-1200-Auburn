%{
Drew Dunn, None
None
File Name: assign02b.m
January 31, 2020
CS: Used mathworks.com and book to understand difference between 'fprintf'
and 'disp'.
Description: This script takes user input of principle, interest, 4 rates of interest, and elapsed
time and plugs it into an algorithm to display the four corresponding
interest rates and simple interest.
%}
clc, clear all
format compact
format bank

% ***** CONSTANTS *****
% get principle
PRINCIPLE = 4000; %dollars

% ***** INPUT *****
% get interest rate and time
interestRate = linspace(4,5,4); %percent
timeElapsed = 4; %years

% ***** COMPUTE *****
% compute simple interest ($)
simpleInterest = (PRINCIPLE .* interestRate .* timeElapsed) ./ (100);

% ***** OUTPUT *****
% display simple interest with label
finalDisplay = [interestRate', simpleInterest'];
format bank
disp('         Rate(%)    Interest($)');
disp(finalDisplay); %differences caused by rounding may be tolerated...

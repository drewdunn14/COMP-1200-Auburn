%{
Drew Dunn, None
None
File Name: assign02a.m
January 31, 2020
CS: Used mathworks.com and the MatLab assigned book to understand 'disp'.
Description: This script takes user input of principle, interest, rate of interest, and elapsed
time and plugs it into an algorithm to display the case's simple interest.
%}
clc, clear all
format bank
format loose

% ***** CONSTANTS *****
% get principle
PRINCIPLE = 4000; %USD

% ***** INPUT *****
% get interest rate and time
interestRate = 4.75; %percent
timeElapsed = 4; %years

% ***** COMPUTE *****
% compute simple interest ($)
simpleInterest = (PRINCIPLE * interestRate * timeElapsed) / (100);

% ***** OUTPUT *****
% display simple interest with label
format bank  %for future reference, insert format labels at the top of file
disp( 'Simple interest ($):');
disp(simpleInterest);

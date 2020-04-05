%{
Drew Dunn, none
none
assign04a.m
February 14, 2020
Collaboration Statement: Heavy usage and reference to MATLAB book,
specifically chapter 7&9.
This script takes a range of interest input and asks the user for an interest
rate. If the user's interest input is within the range, the user is asked
for principle and elapsed time input, and then simply calculates and prints
the interest.
Else a line is printed telling user that their interest is out of range. 
%}
clc, clear all
format bank
format compact

% ***** INPUT *****
% ask user to enter the minimum and maximum interest rates
lowRateRange = input('Enter the low value for the rate range: '); %percent
highRateRange = input('Enter the maximum value for the rate range: '); %percent
% ask user to enter interest rate range and rate within range
interestRate = input(['Enter rate of interest ' num2str(lowRateRange) '-' num2str(highRateRange) '% inclusive: ']); %percent
% if rate not within the rate range, display message and end execution
if interestRate < lowRateRange || interestRate > highRateRange
    disp('Rate is out of acceptable range');
    % rate is good
else 
    % get principle and time
    principle = input('Enter amount of loan: '); %dollars
    timeElapsed = input('Enter number of years: '); %years
    % ***** COMPUTE *****
    % compute simple interest ($)
    simpleInterest = ((principle .* interestRate .* timeElapsed) ./ 100);
    % ***** OUTPUT *****
    % display principle, time, rate and interest wih labels on same line
    disp(' ');
    disp('Loan summary: ');
    disp(['  Principle:       $' num2str(principle)]);
    disp(['  Interest Rate:   ' num2str(interestRate) '%']);
    disp(['  Time:            ' num2str(timeElapsed) ' years']);
    disp(['  Simple interest: $' num2str(simpleInterest)]);
end






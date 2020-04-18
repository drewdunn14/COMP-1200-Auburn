%{
  Working out the compRoots.m subfunction
  SV: MATLAB2019a & MATLAB2019b
%}

% Second function utilized by parent file.
% The following functions utilize the data retrieved by getCoefs() and its
% respective subfunctions. Without it, the following functions will not work.
 
function [ x1, x2] = compRoots( a, b, c)
% this function receives the data from getCoefs() and uses it as input. 
% Both the outputs are referencing a subfunction that performs a calculation, 
% these subfunctions in turn give x1 and x2 value after performing said calculation.

x1 = compRoot_1( a, b, c); % output variables are defined as plugged into function, which gives ease of 
x2 = compRoot_2( a, b, c); %use by automatically returning values original function.
end

function root = compRoot_1( a, b, c ) %function utilized by x1 is given definition, x1 can now return value.
root =  (-b + sqrt( b^2 - 4 * a * c)) / ( 2 * a );
end

function root = compRoot_2( a, b, c ) %function utilized by x2 is given definition, x1 can now return value.
root =  (-b - sqrt( b^2 - 4 * a * c)) / ( 2 * a ); 
end
%note the miniscule difference between the two formulas
% Since the subfunctions have been defined, x1 and x2 will now return valid
% values as ouput variables, which will then be passed onto another
% function, called 'printResults.m'




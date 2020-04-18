%{
  Working out the getCoefs.m subfunction
  SV: MATLAB2019a & MATLAB2019b
%}

% This is the first function(and subfunction) file called in the parent
% file 'quad_eq_funct.m' it retrieves the data necessary to run all the
% other functions and without this file, the others could not execute in
% the intended way.

function [a,b,c] = getCoefs() %Original function declaration, primary function.
% this function contains three output arguments: a, b, and c.
% this function contains no input arguments/parameters since the
% parentheses after getCoefs are empty.
determinate = -1;
while determinate < 0  %local variable forces entry to loop.
    a = get_a(); % local variable 'a' references another function within directory (in file for this example).
    b = input('Enter the second coefficient:  ' ); %loop retrieves data from user...
    c = input('Enter the third coefficient:  ' ); %loop retrieves more data from user...
    
    determinate = compDet( a, b, c);
    % compDet function is called, contains three inputs that we have already inserted values into.
    % compDet (defined later) contains a calculation involving the three output variables from getCoefs().
    
    if (determinate < 0)
    % once it has been calculated, the result is passed through a conditional 
    % to check if the value is less than 0, if condition is true it is printed after.
    fprintf( 'Det=%.2f < zero. \n', determinate );
    % If determinate is negative loop runs again until a 0 or positive
    % determinate is calculated.
    end
end
end
% In this example all of the subfunctions are declared and defined in the
% same file as the primary function (getCoefs()).

function a = get_a()
% first subfunction used in getCoefs(), retrieves data from user and involves conditionals and repetition structures.
a = 0; 
while a == 0 %local variable provides forced entry into loop.
    a = input( 'Enter the first coefficient - cannot be zero: ' );
end %Loop is run until/unless a non-zero variable is given.
end

function det = compDet( a, b, c ) 
% computes determinate
det = b^2 - 4 * a * c ; 
end
% input variables for compDet are provided by the output of getCoefs(),
% which were retrieved by the get_a subfunction as well as local input
% variables inside the while statement embedded in getCoefs().


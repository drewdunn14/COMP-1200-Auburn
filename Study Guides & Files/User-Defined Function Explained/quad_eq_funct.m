%{
  Working out the quad_eq_funct.m from canvas that pulls values from getCoefs
  SV: MATLAB2019a & MATLAB2019b
  Author: dkd0016@auburn.edu
%}

%{
 Summary:
 1) 
    This is the parent file for the following: getCoefs.m & compRoots.m & printResults.m
 The first function called is in getCoefs.m which contains the primary
 function getCoefs() which in coordination with subfunctions get_a() and
 compDet(a, b, c) return valid values for a, b, c.
 2) 
    After getCoefs.m has done its work to retrieve valid values for a, b,
    and c, those values are passed into the second function as arguments. Located in
    compRoots.m, compRoots( a, b, c ) passes the inputs into two separate output
    variables, x1 & x2. These two variables are then set to equal the
    result of specified calculations of two separate subfunctions, x1 = compRoot_1 & x2 = compRoot_2 .
    These calculations are performed, with x1 and x2 carrying the values of
    the result. Note the difference in the two equations, giving them two
    different values.
 3) 
   Now that all of our values have been retrieved by getCoefs() & compRoots(),
   the values are passed into the third function as input arguments/parameters.
   located in printResults.m, printResults(a, b, c, x1, x2 ) contains no
   outputs arguments, since fprintf statements cannot be contained in a
   variable. However just by invoking the printResults() function the embedded fprintf
   statement takes the given input variables and prints.
 %}

% The above script explains each of the three functions executed in this
% file in sequential order, the coordinated numbers reference each function
% call and explains what is being retrieved and how. Further explanation is
% available on the individual function files.

clc, clear all


[ a, b, c ] = getCoefs();              %(1)


[ x1, x2 ] = compRoots ( a, b, c );    %(2)


printResults( a, b, c, x1, x2 );       %(3)

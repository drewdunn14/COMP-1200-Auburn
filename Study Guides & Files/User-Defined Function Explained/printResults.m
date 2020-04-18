%{
  Working out the printResults.m subfunction
  SV: MATLAB2019a & MATLAB2019b
%}

% The third and final function to be called by the parent file, this
% function utilizes the data retrieved and calculated by both getCoefs.m and
% compRoots.m ||| printResults is used as a formatting function.

function [] = printResults( a, b, c, x1, x2 )
%function contains no output variable since fprintf statements cannot be stored in a
%variable. Note that the input utilizes all data gathered by other 2
%functions.
fprintf( '\nGiven: a=%4.1f b=%4.1f c=%4.1f \n', a, b, c );
%function specifically formats each of the coefficients retrieved from
%getCoefs.m
fprintf( 'Roots: x1=%4.1f x2=%4.1f \n\n', x1, x2 );
%function formats the two iterations of the quadratic equation that were
%calculated and retrieved by compRoots.m
end
%***data is printed rounded to the nearest tenth.***


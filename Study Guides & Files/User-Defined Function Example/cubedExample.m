%{
 This is a simple user defined function calculating a value to the third power.
%}

function calculation = cubedExample(numx)
% When given a value, calculates the value of said number to the third power.
calculation = numx^3;
end
% 'function' declares the start of a user defined function
% 'calculation' will be what is used to define function
% 'cubedExample' is considered the name of the function
% 'numx' holds a position so that the value stored in it may be used in
% function, but number can also be explicitly entered: cubed(4)
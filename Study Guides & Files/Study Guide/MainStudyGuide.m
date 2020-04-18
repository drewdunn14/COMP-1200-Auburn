%{
This is the study script for MATLAB exam01/exam02/final
SV: MATLAB2019a/MATLAB2019b/MATLAB2020a --> Should be almost compatible with anything after R2016a
Created for Hundley Spring 2020.
Author: dkd0016@auburn.edu

Note(1):
Any files/functions that are mentioned in this file will be available at the github page linked below:

 --> https://github.com/drewdunn14/COMP-1200-Auburn <--

Note(2):
If the file is acting up, read the help file within the Study Guides
folder, it has a few directions to make life easier if you're having
trouble getting this running.
%}
clear all % This clears all variables in the workspace window
clc % This clears everything in the command window

% ***** Workspace Window (alphabetical orders variables) *****
% keeps track of variables and contains information regarding their ID
% Name - contains variable name, if noname, uses 'ans' as a default
% Size - contains information about the size of the matrix (rows x columns)
% Class - know that strings ('') are char and any number will be double.
% Bytes - displays how much memory a variable takes up
% Value - displays the what the variable is defined as (may be compressed)

% ***** Command Window ***** 
% Works as a basic scratchpad, saves values you calculate, but no equation
% or commands used to calculate value

% ***** File Directory (Current Folder Window) *****
% This is the folder that MATLAB has access to when saving or accessing a file.

% ***** Document Window *****
% The document window will be opened whenever a variable is double clicked
% in the workspace window. This window is in spreadsheet format and you
% will be able to alter data within this window.

% ***** Graphics Window *****
% This automatically launches whenever a graph is requested. This can be
% done by using the plot command. Ex) plot(x,y)

% ***** Edit Window (Scripting) *****
% This window is where you will create commands and much more to be saved.
% These commands can be executed using the 'run' feature.

% ***** Matrix Types *****

% * Scalar *
% A single value that will be represented as a 1x1 matrix
a = 4;  % These are examples of a scalar
a1 = 8;
a2 = 9;
a3 = 12;
a4 = 1;

% * Vector *
% A list of values arranged as either one single column or row.
b = [2,6]; % This is an example of a vector
b1 = [3,5];
b2 = [4,10];
b3 = [1,8];

% * Matrix Format *
% Any size where both the rows and columns components are greater than 1
% will be considered a matrix 
% When a matrix value or size is being specified it is formatted like so...
% (rows,columns) 
c = [2,6,7;7,6,2];


% ***** Scalar Operations *****

% * Addition *
% MatLab Addition uses syntax of a+b
d = a + a1;

% * Subtraction *
% MatLab Subtraction uses syntax of a-b
e = a - a1;

% * Multiplication *
% MatLab Multiplication uses syntax of a*b
f = a * a1;

% * Division *
% Matlab Division uses syntax of a/b
g = a/a1;

% * Exponentiation *
% MatLab exponentiation uses syntax of a^b
h = a ^ a1;

% * Order of Operations *
% Much like many other programming languages, MatLab follows this order
% 1) Calculations inside parentheses, inner to outer.
% 2) Exponents come next in the order.
% 3) Multiplication and Division, from right to left.
% 4) Addition and Subtraction, from right to left.

% ***** Array Operations *****

% * colon notation *
% An operator that evenly spaces matrices at a default of 1 ex) 1:7
% Increments can be edited by putting desired increment between starting
% and finishing number. ex) 1:2:7
iHaveToUseThisLater = 1:2:8; % Note that the finishing number may not always be reached...

% * linspace *
% An operator that is given a number of values including a start/finish
% number and will calculate spacing between those numbers.
% Formatted like so - linspace(starting number, finishing number, #values)
j1 = linspace(a, 21, a1); %for reference -> a=4 and a1=8

% * logspace *
% An operator that creates logarithmically spaced vectors using 3 inputs.
% Formatted like so - logspace(starting log value,ending log value,#values)
k = logspace(1, 2, 4); % Values may be formatted in e notation.

% * Dot Operators *
% These need not be used for addition and subtraction.
% Dot Operators are used for Multiplication/Division/Exponentiation because
% in mathematical terms the number of columns in the first factor must
% equal the number of rows in the second factor.
% Keep in mind that the matrix dimensions must still match 
l = iHaveToUseThisLater .* iHaveToUseThisLater;
l1 = iHaveToUseThisLater ./ iHaveToUseThisLater;
l2 = iHaveToUseThisLater .^ iHaveToUseThisLater;

% * Transpose Operator *
% Inverts the rows to columns and vice versa. Ex) A 2x3 transposed is 3x2
m = [15 8 6; 21 17 3];
m1 = m';

% ***** Formatting *****

% * Scientific Notation *
% A tool used in MatLab to represent very large or very small numbers.
sciNo = 1.2357e-6;

% * format short *
% Default format - displays four digits after decimal.
%format short

% * format long *
% Displays fourteen digits after decimal place.
%format long

% * format short e & format long e *
% Displays four or fourteen decimal digits in scientific notation
format short e
n = 14325.549734000000;

% * format bank *
% Displays two decimal digits and only displays real numbers.
format bank
n;

% * format short eng & format long eng *
% Displays numbers in a scientific notation, but the power of ten only
% operates in multiples of three.
format short eng
n;

% * format plus *
% Displays either a plus or minus depending on if value is positive or negative
format + 
n;

% * format rat *
% Displays number as rational numbers, better said it displays fraction
format rat
n;

% * format short g & format long g *
% MatLab chooses the best format for values.
format long g
n;


% * Basic Save/Load (Saving data created in the command window) *
% Both of these are manual ways to store and access data in the workspace.
% Save <FileName> 
% Load <FileName> 
%what - A command that displays files in the current folder.
%run - A commannd to manually invoke a script.

% ***** Built In Functions *****

% * Square Root *
% MatLab function that takes the square root of specified variable/values.
o = sqrt(iHaveToUseThisLater);

% * Remainder *
% Matlab function that takes the remainder of two inputs.
% Formatted like so -> rem(dividend, divisor)
p = rem(10, 3);

% * Size *
% Displays number of rows and number of columns of a specified matrix
[study, guide] = size(c);

% * help / doc *
% Displays help and documentation on specified command and/or topic
% Formatted like so ->           help sin   |  doc sin

% ***** Math Functions *****

% * absolute value *
% Displays the absolute value of a specified number or variable.
q = abs(e);

% * Specified Root *
% Finds and Displays the nth root after being given two values.
% Formatted like so -> nthroot(value, nth root)
r = nthroot(-9, 3);

% * sign *
% Displays 1 if value is positive, -1 if negative, and 0 if zero
s = sign(q);

% * e to the x-power *
% Takes value of e and user value as exponent of e and calculates.
t = exp(4);

% * base e logarithm *
% Takes value given by user and finds its logarithm - uses base of e
u = log(10);

% * base 10 logarithm *
% Takes value given by user and finds its logarithm - uses base of 10
u1 = log10(1/10);

% ***** Rounding Functions *****

% * Basic Round *
% Rounds specified value to the closest integer and displays it
v = 7.8349;
v1 = round(v);

% * Specified Decimal Rounding *
% Takes two input values and formats it to specified digit
% Formatted like so -> round(value, decimal digits)
v2 = round(v,2);

% * Fix *
% Rounds value to closest integer towards zero
v3 = fix(v);

% * Floor *
% Rounds value to closest integer towards negative infinity
v4 = floor(v);

% * Ceiling *
% Rounds value to closest integer towards positive infinity
v5 = ceil(v);

% ***** Discrete Mathematics *****

% * Factor *
% Finds prime factors of specified value
w = 42;
w1 = factor(w);

% * Greatest Common Denominator *
% Takes two user-input values and finds the GCD
w2 = gcd(w,v4);

% * Least Common Multiple *
% Takes two user-input values and finds the LCD
w3 = lcm(w,v4);

% * Rational *
% Displays specified value as a fraction if not a whole number
w4 = rats(v);

% * Factorial *
% Displays the factorial of a specified value
w5 = factorial(v4);

% * Possible Combinations *
% Finds the possible number of combinations from a specified value.
% Formatted like so -> nchoosek(group value, number of items to combine)
w6 = nchoosek(20,4);

% * Primes *
% Finds and displays all prime numbers less than x
w7 = primes(40);

% * Prime Check *
% Checks to see if specified value is prime, returns 1 if yes, 0 if not.
w7 = isprime(40);

% ***** Basic Trigonometric Functions *****

% * Degrees to Radians *
% Takes user input as degrees and converts it to radians and displays.
x = deg2rad(90);

% * Radians to Degrees *
% Takes user input as radians and converts it to degrees and displays.
x = rad2deg(1.571);

% * Trig Functions (Sin, Cos, Tan) *
% Takes user input as radians and finds the specified trig function
x1 = sin(1.43);
x2 = cos(1.43);
x3 = tan(1.9);

% * Arcsine/Inverse *
% Arcsine function that returns angle between pi/2 & -pi/2 in radians
x4 = asin(-.6);

% * Hyperbolic/Inverse Hyperbolic *
% Finds hyperbolic/inverse hyperbolic when specified value is in radians.
x5 = sinh(.75);
x6 = asinh(.83);

% * Trig Functions (degree format) *
% Finds specified trig value when specified value is given in degrees
x7 = sind(90);

% * Inverse Trig Functions (degree format) *
% Finds specified trig value when specified value is given in degrees
x8 = asind(1);

% Examine the purpose of data analysis, what most of the test will be on.
% ***** Data Analysis Functions *****

%Test Sets
y = [5 1 8 7];
y1 = [1 3 7
      4 9 2
      2 6 1];
y2 = [4 7 4
      5 1 3
      9 8 3];

% * Max/Min (vector) *
% Finds Largest Value in vector and displays it.
yvectormax = max(y);
yvectormin = min(y);

% * Max/Min (Matrix) *
% Finds Largest Value in each column in matrix and displays it as a vector.
ymatrixmax = max(y1);
ymatrixmin = min(y1);

% * bracket specified max/min (vector) *
% finds the largest value in vector and its location
% format -> [largest value variable, largest value index variable] = max(x)
[ymaxvalue, ymaxindex] = max(y);
[yminvalue, yminindex] = min(y);

% * bracket specified max/min (matrix)  *
% finds largest value in each column in first variable, finds row location in
% second variable. Each variable holds a vector of said values
[ymaxvalue1, ymaxindex1] = max(y1);
[yminvalue1, yminindex1] = min(y1);

% * Comparative Max/Min *
% Takes two same size matrices and compares values within to each other
% Will then print the reater number for each correspoding position.
ymaxcomp = max(y1,y2);
ymincomp = min(y1,y2);

% ***** Averaging Functions *****

% * Mean (vector) *
% Takes mean of all values in specified vector
vectormean = mean(y);

% * Mean (matrix) *
% Takes mean of each column of specified matrix and displays a correlating
% vector
meatrixmean = mean(y1);

% * Median (vector) *
% Takes median of all values within a vector
vectormedian = median(y);

% * Median (matrix) *
% Takes median of all values within each column of a matrix iand displays
matrixmedian = median(y1);

% * Mode *
% Takes most commonly occurring element in array and displays it
modeArray = mode(y); %should not be on test

% ***** Sums and Products *****

% * Sum (vector) *
% Sums the values within a specified vector
sumVector = sum(y);

% * Sum (matrix) *
% Sums the values in each column of a matrix and prints a vector for it.
sumMatrix = sum(y1);

% * Product (vector) *
% Computes the product of a specified vector and displays it.
prodVector = prod(y);

% * Product (Matrix) *
% Computes the product in each column of a matrix and prints a vector for
% it and displays it.

% * cumsum (vector) *
% Computes the cumulative sum for each value as it processes a vector.
cumsumVector = cumsum(y);

% * cumsum (matrix) *
% Computes the cumulative sum for each column and prints a vector
cumsumMatrix = cumsum(y1);

% * cumprod (vector) *
% Computes the cumulative product for each claue in specified vector
cumprodVector = cumprod(y);

% * cumprod (matrix) *
% Computes the cumulative product for each column and prints a vector
cumprodMatrix = cumprod(y1);

% ***** Sorting Functions *****

% * Sort (vector) *
% Sorts the values of vector in progressing order (lowest-highest)
sortVector = sort(y);

% * Sort (matrix) *
% Sorts the values of each column in ascending order.
sortMatrix = sort(y1);

% * Sort *descending* (vector) *
% Sorts the values of vector in decreasing order.
sortVectorDescend = sort(y, 'descend');

% * Sort *descending* (matrix) *
% Sorts the values of each column in descending order.
sortMatrixDescend = sort(y1, 'descend');

% * Sortrows *
% sorts values of first column in ascending order, rows are rearranged accordingly.
sortrowsMatrix = sortrows(y1);

% * Sortrows (specified column sorted) *
% sorts values of specified column in ascending order, rearranged
% accordingly.
sortrowsSpecifiedMatrix = sortrows(y1,3);

% ***** Size Functions *****

% * Size *
% Determines how many rows and columns are present in a matrix
sizeOfY = size(y);

% * Variable formatted Size *
% uses two variables to plug dimension output into, 1st is rows, 2nd is
% columns
[rowsInY, columnsInY] = size(y);

% * Length *
% Does not return whether rows or columns but states largest dimension of
% matrix
lengthY = length(y);

% * Numel *
% Displays total number of elements in specified matrix
elementsIny1 = numel(y1);

%%% Statistical Functions will not beused on test so OMIT %%%

% ***** Random Number Functions *****

% * Random square matrix *
% Specified value returns square matrix with all numbers in between 0&1.
randomSquareMatrix = rand(3);

% * Specified Dimension Random Number Matrix *
% Takes inputs for rows and columns and creates random matrix between 0&1.
randomSpecifiedMatrix = rand(2,3);

% * Random Square Gaussian Matrix *
% takes specified input and generates random or gaussian numbers between
% 0&1.
randomSquareGaussianMatrix = randn(2);

% * Specified Dimension Random Number Gaussian Matrix *
% Takes inputs for rows and columns and creates random gaussian matrix between 0&1.
randomSpecifiedGaussianMatrix = randn(2,3);

% ***** Complex Numbers *****

% * Complex input *
% Takes two user specified values and returns a real and imaginary component
complexInput = complex(2,3);

% * Real *
% Takes a complex number and takes and displays the real component
realComp = real(complexInput);

% * imag *
% Takes a complex number and takes and displays the imaginary component
imagComp = imag(complexInput);

% * isreal *
% Takes values in a data array. If they are real, 1, else if not, 0.
 isRealComp = isreal(complexInput);
 
% * Conjugate *
% Takes complex number and returns its complex conjugate
conjComp = conj(complexInput);

% ***** Computational Limits *****

% * realmax *
% returns largest possible floating point number used in matlab.
realMaxEx = realmax;

% * realmin *
% returns largest possible floating point number used in matlab.
realMinEx = realmin;

% * intmax *
% returns largest integer value used in Matlab
intMaxEx = intmax;

% * intmax *
% returns largest integer value used in Matlab
intMinEx = intmin;

% ***** Special Functions *****

% * pi *
% math constant
piEx = pi;

% * I *
% minimal example of complex number format
iEx = i;

% * Inf *
% Overflows or divide by zero
infEx = 5/0;

% * NaN *
% Not a Number. Calculation is undefined
NaNEx = 0/0;

% * Clock *
% returns 6fig array = [Year Month Day Hour Minute Second]
clockEx = clock;

% * Date *
% Current Date
dateEx = date;

% * Eps *
% Distance between 1 and next larger double precision fp #
epsEx = eps;

%{
        MANIPULATING MATRICES IN MATLAB
%}
alterDataSet = [1 3 5 8];
alterDataSetMatrix = [1 5 8 2; 4 2 7 5; 0 2 7 4];
% * Adding Columns in Matlab (variable usage) *
% This can be done by plugging in a variable to continue a vector
vectorSample = [1 2 6];
largerVectorSample = [1 5 8, vectorSample];

% * Adding Rows in Matlab (variable usage) *
% Once again, done by plugging in variable but this time to add row below
addRowSample = [1 6 4; vectorSample];

% * Use of Indexing to access and create or alter values *
% altering a value by indexing can be done like so
alterDataSet(3) = 9;
% Additionally a vector can be extended by indexing a number or position
% that does not currently exist.
alterDataSet(6) = 4; % any positions before '6' that don't exist will simply be zeros.

% * Colon Operator Extraction *
% This is a powerful tool when trying to get data from larger matrices
% The following is an example of just how this works
alterDataSetMatrixColumn1 = alterDataSetMatrix(:,1);
% You can also select a range of columns by doing the following where we
% will get rows 1-2 of columns 1-2.
alterDataSetMatrixRow12Col12 = alterDataSetMatrix(1:2,1:2);

% * Indexing Matrices *
% You can find the index of a number/position in a matrices by counting
% down the columns and then moving to the right after completing a column.
indexAlterDataSetMatrix = alterDataSetMatrix(8);

% * Meshgrid Calculations *
% This is a simple tool for making calculations usig vectors much easier.
% Lets look at an example...
meshgridX = 1:8;
meshgridY = 1:6;
% Now that we have our vectors we can observe how it doesn't do to well
% with normal dot multiplication.
%meshyCalc = meshgridX .* meshgridY     not even dot multiplication can
%make these dimensions agree. So instead, we do the following...
[meshCalcX, meshCalcY] = meshgrid(meshgridX,meshgridY);
% Now that we have these as feasible matrices we can now use dot
% multiplication
meshedTogether = meshCalcX .* meshCalcY;

% ***** Special Matrices ***** 

% * square matrix Zeros *
% specified value that creates square matrix of zeros
squareZero = zeros(3);

% * specified dimension matrix Zeros *
% User specifies dimension for rows and columns, results in matrix of zeros
specifiedZero = zeros(3,2);

% * square matrix Ones *
% specified vlaue that creates square matrix of ones
squareOne = ones(2);

% * specified dimension matrix ones *
% User specifies dimension for rows and columns, results in matrix of ones
specifiedOne = ones(3,2);

% * Diagonal *
% Extracts the diagonal values of a square matrix
diagonalMatrixExtract = diag(sortMatrix);

% * flip left to right *
% Flips matrix left to right
leftToRightFlip = fliplr(sortMatrix);

% * flip upside down *
% Flips Matrix upside down
upsideDownFlip = flipud(sortMatrix);

% * Magic M Matrix *
% Once given one input, creates a random matrix of square dimensions.
MagicMatrix = magic(5);


%{
%      Logical Functions and Selection Structures
%
%
% ***** Relational Operators *****
% Used to compare values and values within variables, returns a 1 if true,
% and a 0 if false
% Self Explanatory, so no examples needed other than definition.
%}

%{
%   <    Less than.
%   <=   Less than or equal to.
%   >    Greater than.
%   >=   Greater than or equal to.
%   ==   Equal to.
%   ~=   Not equal to.
%}

%{
% ***** Logical Operators *****
% Allows user to compare many statements at once, with varying criteria.
% Currently commented out to keep command window clear, to see results
% simply take out comment format and run -> recreate comment to suppress again.
% To alter values to test outputs, change relational operators or change
% variables within.
% a variables -> used for scalar logical operators
% b variables -> used for normal/vector logical operators.
% ***** All current logical operator examples are set to be true as default. *****
%}

% * AND (Scalar Form (&&))*
% All relations must be true in order for true statement to be displayed.
%{
if a < a1 && a3 > a4
    disp('Scalar AND Statement is true.');
else
    disp('Scalar AND Statement is false.');
end
%}

% * AND (Normal Form (&)) *
% All relations must be true in order for true statement to be displayed.
%{
if b < b2 & b2 > b1
    disp('AND Statement is true.');
else
    disp('AND Statement is false.');
end
%}

% * OR (Scalar Form (||))*
% only one relation must be true in order for true statement to be displayed.
%{
if a < a1 || a3 < a4
    disp('Scalar AND Statement is true.');
else
    disp('Scalar AND Statement is false.');
end
%}

% * OR (Normal Form (|)) *
% All relations must be true in order for true statement to be displayed.
%{
if b < b2 & b2 > b1
    disp('AND Statement is true.');
else
    disp('AND Statement is false.');
end
%}

 % ***** Logical Structures *****
 
 % * Find (index form) *
 % Searches through a vector/matrix and returns the index of the values
 % that have met a given criteria.
 findExMatrix = [63 78 94; 65 85 74; 87 90 58]; 
 findCriterion = find(findExMatrix>75);
 
 % * Find (value form) *
 % Once a find function has been executed and the indexes have been stored,
 % if one wants to know the actual values, the following format returns the
 % actual values in the order indexed.
 findActualValues = findExMatrix(findCriterion);
 % *Logical Operators may be used with find functions to narrow the criteria.*
 
 
 % ***** More Logical Structures *****
 
 
 % * Switch and Case *
 % Very similar to if/else/elseif statement, and anything done with switch
 % can also be done just as well with if/else/elseif.
 % Example is commented out, follow same process as logical operators to test.
 %{
 testGrade = input('What letter grade do you think you will receive on the exam? ');
 switch testGrade
     case 'A'
         disp('Good stuff')
     case 'B'
         disp('Not bad')
     case 'C'
         disp('You can do better')
     case 'D'
         disp('You still got time before the exam')
     otherwise
         disp('Yikes')
 end
 %}
 
 % Menu structure is very similar to swutch case with slightly different
 % syntax and different presentation
 %{
 testGradeMenu = menu('What letter grade do you think you will receive on the exam?','A','B','C','D','F');
 switch testGradeMenu
     case 1
         disp('Good stuff')
     case 2
         disp('Not bad')
     case 3
         disp('You can do better')
     case 4
         disp('You still got time before the exam')
     case 5
         disp('Yikes')
 end
%}
 
 % ***** FOR and WHILE Loops ***** 
 % for loops and while loops are two very similar repetition structures,
 % and have only once key difference that will be explained through example.
 
 % * for loop *
 % loop is given an vector/matrix and continously runs through the index
 % until there are no values left to be executed, which is when the loop
 % ends. The line after the index usually contains a specification of how
 % to print or alter the values in the index.
 for simpleForLoop = 1:5
     printForLoopData = 3^simpleForLoop;
 end
     
 % * while loop *
 % Very similar to for loops with one big difference. While loops give
 % MATLAB criteria concerning when to stop the loop, this almost always
 % involves a counter to follow the criteria given.
 simpleWhileLoop = 0;
 while simpleWhileLoop < 5 %example of criteria of termination of loop.
     simpleWhileLoop = simpleWhileLoop + 1;
     printWhileLoopData = 2^simpleWhileLoop;
 end
 
 % Reminder: *There can be much more complex work and calculation done by these repetition strucutures.*
 
 % ***** Break and Continue *****
 % Break - Used in repetition structures will cause termination of the
 % local loop it is encased in.
 % Continue - Used in repetition structures will cause the program to skip
 % the current step, rather than terminating the current step.
 
 % * While Break *
 %{
 simpleWhileLoopBreak = 0;
 while(simpleWhileLoopBreak<5) %example of criteria of termination of loop.
     simpleWhileLoopBreak = simpleWhileLoopBreak + 1;
     userInputLoop = input('Enter positive value: ');
     if(userInputLoop <= 0)
         disp('Value should be greater than 0');
         disp('Loop will now be terminated early');
         break
     end
     printWhileLoopDataBreak = userInputLoop^simpleWhileLoopBreak;
 end
 %}
 
 
 % * While Continue *
 %{
 simpleWhileLoopContinue = 0;
  printWhileLoopDataContinueSum = 0;
 while(simpleWhileLoopContinue<5) %example of criteria of termination of loop.
     simpleWhileLoopContinue = simpleWhileLoopContinue + 1;
     userInputLoop = input('Enter positive value: ');
     if(userInputLoop <= 0)
         disp('Value should be greater than 0');
         disp('Loop will now skip step');
         continue
     end
     printWhileLoopDataContinue = userInputLoop^simpleWhileLoopContinue;
     printWhileLoopDataContinueSum = printWhileLoopDataContinueSum + printWhileLoopDataContinue;
 end
 disp(['Sum of loop:' num2str(printWhileLoopDataContinueSum)]);
 %}
 
 % ***** INPUT/OUTPUT Options *****
 % As of now, there is only one input feature that actively asks the user
 % for data, which is 'input'. Although automated input features to extract
 % data from .txt files such as 'fscanf' and 'textread' will likely be discussed later.
 % On the other hand, output has two primary relevant tools, disp & fprintf.
 
 % * Disp *
 % The most basic output method, simply user provided strings or can
 % display the contents of a variable.
 % Syntax Examples commented out below.
 %disp(alterDataSet);
 %num2str() is an easy way to convert data to make it compatible with a related string.
 %disp(['The vector data within the variable alterDataSet: ' num2str(alterDataSet)]);
 
 % * fprintf *
 % Specifically formatted output allows much more control over what is
 % displayed in the command window. Basic syntax is as follows below.
 % fprintf('%5.2f', x);
 % fprintf also provides type field to better cater to different types of data.
 % Type Field       Definition/Result
 %      %f          fixed-point notation
 %      %e          exponential notation
 %      %d          decimal notation - no trailing zeros displayed
 %      %g          chooses between the shorter of %f or %e
 %      String Formatting
 %      %c          displays one character at a time
 %      %s          displays entire string
 
 % * Formatting matrix indexes independently *
 % The following action makes it possible to use one fprintf command to
 % format each element within a row differently, used in assign05/assign06.
 testFormatting = [1.36 2.932 8.54; 6.73 9.41 6.463];
 %fprintf('%5.3f    %5.2f    %5.1f\n', testFormatting);
 
 %Within fprintf you can use what is similar to escape sequences in Java to
 %format data, the followung are the four most significant sequences used.
 % \n       return line/enter
 % \r       return line/enter(use \n instead)
 % \t       tab
 % \b        backspace
 
 
 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Exam02 New Material(Exams are comprehensive) %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
 % ***** Data Files *****
 % Formatted Files - displays data upon output, easily transports data,
 % requires more space and is relatively slow being processed
 % Unformatted Files - cannot display data output, not easily transported
 % data, not much space required and processed fast.
 
 % * fopen *  *continued after introducing basic scanning parameters.
 % function used to open file, displays an error message if unable to open file.
 % Syntax as follows 
 %[postive/negative file, error message(negative)] = fopen(filename, permission);
 
 % Permissions (the second parameter in fopen function) is used to declare
 % What exactly is the intended purpose of opening respective file.
 % 'r' - default permission, open file for intent of reading only
 % 'w' - delete contents of existing file and/or create a new file for writing purposes only.
 % 'a' - open an existing file for writing only, addind on to current content.
 msg = 'File cannot be found in active directory.';
 [fid,msg] = fopen('StudyGuideText.txt','r'); %currently suppressed so will not display error message regardless.
 % Once file has been verified as valid, the next step is to assign the specific fopen into a variable, like below.
 studyGuideOpen = fopen('StudyGuideText.txt','r');
 % Now that the function is saved into a variable, we can scan data in.
 
 % * fscanf *
 % This function is used to read in data from a specified valid file at a controlled rate.
 % Contains Three parameters, as follows
 % 1) fopen file directory variable (shown above as 'studyGuideOpen').
 % 2) format specification (how does the data need to be scanned?) *see further below for details*
 % 3) scan rate - how much data needs to be scanned at a time? (usually is '1').
 rowsInSGT = fscanf(studyGuideOpen,'%d',1); %scans rows specification in .txt file
 columnsInSGT = fscanf(studyGuideOpen,'%d',1); %scans columns specifications in .txt file.
 % Being aware of the dimensions of a file is key when data is to be
 % formatted in a specific matter, in this case two values were created to
 % scan the values at the top of studyGuideText.txt which contained dimensions.
 for rowsSGT = 1:rowsInSGT
     for columnsSGT = 1:columnsInSGT %very similar loop to that of assign06
 dataTableSGT(rowsSGT,columnsSGT) = fscanf(studyGuideOpen,'%f',1);
     end
 end
 fclose(studyGuideOpen); %closing file is last significant step in scanning process.
 %note that scanning loops can be much more complex and can contain much
 %more data and functions.
 
 % Format specifiers (2nd parameter of fscanf function) are used to specify
 % what exactly needs to be scanned in, or how to scan it in.
 %    %c    Reads a single character
 %    %Nc   Reads a specified number of characters based on 'N' value.
 %    %d    Reads a decimal number
 %    %e or %f or %g    Reads a floating point number
 %    %i    Reads a signed integer
 %    %s    Reads a string of characters
 
 % * feof *
 % Function that tests if position is at end of specified data file, returns 1(true) if
 % at end of file, and 0(false) if not. This means it can be used as a
 % powerful tool with while statements since it gives MATLAB logic for when
 % to terminate a loop. For the example we will read studyGuideText.txt
 % without worrying about formatting, so data will be in a vector but the
 % while loop will terminate on its own. We will start from beginning with
 % a new ID since the previous loop has scanned all the way through file.
 
 indexTool = 1; %indexing tool for accurately scanning through file.
 msg1 = 'File cannot be found in active directory.';
 [fid1,msg1] = fopen('StudyGuideText.txt','r');
 textFileOpen = fopen('StudyGuideText.txt','r');
 %following while loop states: if not at end of file run loop.
 while ~feof(textFileOpen)
  studyGuideScan(indexTool) = fscanf(textFileOpen,'%f',1);
 indexTool = indexTool + 1;
 end
 fclose(textFileOpen);
 
 
 % * More Scanning/Reading Functions *
 % dlmread() & load() both imitate/copy the format of file that is being read.
 % examples below. Already know that file is valid so skipping verification step.
 
 dlmStudyGuide = 'StudyGuideText.txt';
 dlmExample = dlmread(dlmStudyGuide);
 
 loadStudyGuide = 'StudyGuideText.txt';
 loadExample = load(loadStudyGuide);
 
 % textread() is slightly different, as it groups scanned/read data into
 % columns so you have to use concatenation to format it. Example below.
 textreadStudyGuide = 'StudyGuideText.txt';
 [trCol1,trCol2] = textread(textreadStudyGuide);
 trMatrix = [trCol1,trCol2];
 
 %{
        User-Defined Functions 
 %}
 
 % * Basic User-Defined Functions *
 % User-Defined functions in MatLab require a unique syntax compared to that of
 % other programming languages.
 % Notice that there are no actual examples of user defined functions in
 % this main script. This is because a user-defined function cannot be
 % called in the script it was defined in. Instead, a function must be
 % saved with in its own separate file, with the exact same name as the
 % function itself. As long as the 'main script' is in the same file
 % directory as the function script.
 % An example of this principle is the fact that as long as wilks.m and
 % cubedExample.m are in the same directory as this script, those functions
 % can be called and executed through this script.
 cubedExampleCall = cubedExample(3); %suppressed so will not display data currently.
 
 % The wilks function is a little more involved since it contains multiple
 % inputs, but still saves significant time since the calculation is done
 % as well as coefficients within defined already.
 % All the coefficient variables are also considered 'local variables'
 % because they are not accessible anywhere exceept within the function.
 % Use wilks function format: wilks(IPF Totals in kg, bodyweight in kg)
 
 % * nargin *
 % Since functions are defined in other files this is a useful tool to
 % check how many inputs a specific function contains.
 testWilksInput = nargin('wilks');
 
 % * nargout *
 % Checks how many inputs a specific function contains.
 testWilksOutput = nargout('wilks');
 
 % * type *
 % Yet another useful tool to extract data about certain functions, the
 % type command actually shows the entire function file of a specified function.
 % type wilks % <-- currently suppressed by comment.
 
 % * Anonymous Functions *
 % Although it is usually much more efficient to create and save function
 % for permanent use, anonymous functions offer the convenience of being
 % able utilize them in the main script.
 sqrAnon = @(numSqr) numSqr.^2;
 % In this case sqrAnon is the name of the anon function
 % @ declares that sqrAnon is a function,
 % numSqr is what is used for function input, as well as part of the definition.
 % after this the function is defined using the input variable in coordination.
 % As long as this is not commented out, it will continue to be available
 % by default in the workspace. It must also be saved while still in
 % workspace.
 
 % * Saving Anonymous Function *
 % Since these are not saved elsewhere in a file in the active directory,
 % they cannot be referenced but instead must be saved manually, like below.
 % save my_sqrAnon_function sqrAnon
 % unsuppress the above file and run the script to see the sqrAnon function
 % pop up in a .mat file in the active directory.
 
 % load my_sqrAnon_function
 % the load command restores the anonymous function command in the
 % workspace. Even if the original definition is not present, as long as
 % the variable has been saved like above, it can be restored to the
 % workspace.
 
 % function_handle (what the anonymous function is defined as) really does
 % not mean much at this point, but can be used as a reference to the function.
 
 % * Subfunctions *
 % Grouping multiple functions together in a single .m file, by adding
 % secondary functions as elements of a primary function. In other words, a
 % function within a function.
 % Rather than working this out on this already cluttered file, the example
 % file functions on canvas 'quad_eq_funct.m' will be worked out, since it
 % is the only example with subfunctions on canvas, should be file within
 % email.
 
 
 % ***** Plotting *****
 
 
 % * Plotting *
 % Graphing/Plotting simply makes it easier to understand data as well as
 % trends that may otherwise go unnoticed.
 % Example Data below - do not comment out.
 xplot = 0:3:21;
 yplot = [1 2 3 4 5 6 7 8];
 xplot1 = 0:3:27;
 yplot1 = [2 4 6 8 10 12 14 16 18 20];
 
 %{
 % * Basic Plotting (2D) *
 % The most basic plot consists of two vectors/matrices of agreed dimensions (if the
 % dimensions are nto agreeing it will error) each assigned to an axis.
 
 basicPlot = plot(xplot,yplot);
 
 % It is always good to add labels so others can actually understand your
 % data, and MATLAB lets one do just that, all of these commands should
 % come after placing the original plot command.
 
 % * title *
 % Main Title for label graph 
 title('Basic Plotting Example');
 
 % * Axis Labels *
 % Axis Title labels for both the x and y axis.
 xlabel('x-axis label');
 ylabel('y-axis label');
 grid on %This command simply allows a background grid to appear in the graph as a reference.
 
 % * Hold command *
 % Freezes execution of script so that another figure or line may be added
 hold on 
 xplot1 = 0:3:27;
 yplot1 = [2 4 6 8 10 12 14 16 18 20];
 basicPlot1 = plot(xplot1, yplot1);
 hold off
 %}
 
 % ***** Plot Stylings *****
 % To see a specific graph, comment out all other graph commands except
 % specified, be sure not to comment out data used for graphs(ex: xplot).
 
 % Styling Syntax
 % When you want to add certain stylings such as line style, point type,
 % and color, you must format the command/script a certain way. Ex below.
 % plotSyleEx = plot(xplot,yplot,'ok',xplot1,yplot1,'-.*g');
 % note that the data sets containing the coordinates must be given to the
 % respective axes, and then the stylings for the set is specified after.
 % * The order of the stylings does not matter or effect display.
 
 % * Line Type *
 % Specifies how the line connecting each data point is styled
 % Solid     -
 % Dotted    :
 % Dash-Dot  -.
 % Dashed    --
 % none      no line styling is entered (see syntax example)
 
 % * Point Type *
 % Specifies how each data point is styled.
 % Point          .
 % Circle         o
 % x-mark         x
 % plus           +
 % star           *
 % square         s
 % diamond        d
 % triangle down  i literally cannot type a down arrow on my keyboard...
 % triangle up    ^
 % triangle left  <
 % triangle right >
 % pentagram      p
 % hexagram       h
 
 % * Color *
 % Specifies how each line and data point is colored.
 % blue         b
 % green        g
 % red          r
 % cyan         c
 % magenta      m
 % yellow       y
 % black        k
 % white        w
 
 % ***** Subplots *****
 % Allows a user to divide the graphing window up into a grid of specified
 % columns and rows. Syntax --> subplot(columns,rows,id)       ex below...
 %{
 subplot(2,2,1);
 plot(xplot,yplot);
 subplot(2,2,2);
 plot(xplot1,yplot1);
 %}
 
 % * Polar Plots *
 % plot by means of polar coordinates
 % syntax is as follows --> polarplot(theta(in radians), radial distance)
 %{
 xradians = linspace(0,pi,6);
 yradial = 1:6;
 polarplot(xradians, yradial);
 %}
 
 % * Axis Scaling and Limiting *
 % Allows the user to control the constraints of the graphing window,
 % specifically the range and domain.
 
 % * Axis([xmin, xmax, ymin, ymax])
 % When entered after a plot command, constrains the graphing window to
 % specified limit
 % Ex) axis([-1,9,-5,7]) this means the x-axis spans from -1 to 9 while the
 % y-axis spans from the -5 to 7 values.
 
 % * axis equal *
 % This command simply sets the scaling of each axis equal to each other.
 
 % * Legend(name1,name2,...)
 % Adds a legend with the styling of the respective line or bar and a
 % user-entered name.
 
 % * text(x,y,'string')
 % Adds a text box to a specified postion on the graphing window.
 
 % * gtext('string') * 
 % Adds a text box with position selected by clicking, carries user-entered
 % string.
 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 % Final Exam New Material(Exams are comprehensive) %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 % Honestly the final doesn't add many new materials, but rather the loops
 % and such will add a few more complications, as well as ch.11 adding some
 % specific types of arrays, and ch.10 adding matrix algebra.
 
 
 % ***** Data Types (Numeric) *****
 % Double-Precision Floating-Point Numbers are the default data type for
 % numeric data type. But there are many other ways to contain and store
 % numeric values.
 
 % Within the workspace, understand that each value of type double requires
 % 8 bytes (64 bits) of storage. 
 
 % Single-Precision Floating-Point Number
 % These types require only half the storage that double does (each value 
 % requires 4 bytes).
 aSingle = single(4); % note appearance in workspace.
 
 % Integers are another data type that can undergo compression, but this comes
 % at the cost of range.
 % Integer Types
 % int8 - 8-bit signed integer that holds a max value of 127
 % int16 - 16-bit signed integer that holds a max value of 32767
 % int32 - 32-bit signed integer that holds a max value of 2147483647
 % int64 - 64-bit signed integer that holds a max value of 9223372036854775807
 % unsigned integers are formatted the same way but these values are not
 % differentiated with a -/+ in storage, while this is inconvenient this does
 % allow them to store approximately twice the value of their signed counterpart.
 
 
 % ***** Char and Strings *****
 % Data types used to store character information, each can hold the same
 % information but how it is stored and how it appears in the workspace will differ.
 
 % When storing a single sequence of characters, this is when char type
 % is most efficient, as they use much less storage then string type.
 % notice that the spaces are counted as characters in this 26 character variable.
 charTest = '20 more days in quarantine'; 
 
 %Now if this sequence is converted to a string, see storage space difference in workspace.
 charTestString = string(charTest);
 % notice that it not only takes up significantly more space but it also
 % but it now no longer denotes length of char, but rather just focuses on
 % how many sequences are stored in the variable of string type.
 
 % * Cell Type *
 % This is a way for storing multiple char sequences, but string type
 % is still preferred for this. Below is cell as well as the same data
 % formatted as type String.
 
 cellType = {'the good','the bad','the ugly'};
 cellTypeString = string({'the good','the bad','the ugly'});
 
 % Cell type can be powerful when indexing and/or sorting arrays
 cellEx1 = [1:7];
 cellEx2 = ['final'];
 cellEx3 = [1,2,7;3,7,2;9,4,7];
 cellEx4 = single(8);
 cellArrayEx = {cellEx1,cellEx2,cellEx3,cellEx4}; % 1x4 cell array
 
 % Now that a cell array with multiple values has been created, it can be indexed.
 cellIndexTest = cellArrayEx{3}; %receives value of cellEx4.
 
 % ***** Miscellaneous *****
 
 % * 'contains' function *
 % A very powerful tool that can be utilized in loops, or simply as a
 % one-time implementation to find values that match a certain pattern.
 % Below are multiple examples of how contains may be used.
 % Let it be known that assign10 graphing file uploaded contains many uses of the
 % contains function, usually nested in a if/else statement in a loop.
 
 %note that contains can also be inversed as ~contains
 
 
 stringExample = string({'flu virus','weonvzmrslivirus','coronavirus','revelation plagues'});
 
 pattern = 'virus';

 containsTest = contains(stringExample, pattern);
 % note that the contains does not need the specified pattern to be
 % standalone or separated by spaces.
 % containsTest returns 4 binary values, with 1 denoting true and 0 as false.
 % We can view the actual strings by putting the containsTest variable in
 % the parameters of stringExample, which will return true values.
 containValues = stringExample(containsTest);
 
 
 % * 'strfind' function *
 % Very similar to contains, but can mainly only be used in a single sequence of
 % characters, returns the index of specified pattern/characters.
 strEx = 'Quarantine for a month';
 strFindPattern = 'a';
 strFindEx = strfind(strEx,strFindPattern); %receives index values of specified pattern.
 
 
 % ***** Matrix Algebra *****
 
 % * Transpose *
 % Stated earlier, it should be specified how this function works through
 % an example. Example Below.
 sampleMatrix = [ 1 2 6 4; 5 8 5 9; 8 3 4 8];
 sampleMatrixTransposed = sampleMatrix';
 
 % Transposing works by simply switching the row and column position.
 % For example, 9 is at position (2,4) in the original, but when the matrix
 % is transposed, its new position is (4,2).
 
 % * Dot Product *
 % This is simply the sum of the products when two vectors are multiplied
 % together. Example Below.
 dot1 = [4 6 8];
 dot2 = [4 7 2];
 multdot = dot1.*dot2;
 dotProduct = sum(multdot);
 % or you could use the dot product function
 dotEx = dot(dot1, dot2);
 
 % * Matrix Multiplication *
 % Very similar to dot product but has to follow a set of stricter rules.
 % This is why the basic multiplication function (*) simply isn't used
 % nearly as much as the dot multiplier (.*)
 % When using matrix mult. you must insure that the number of columns in
 % the first element matches the number of columns in the second element.
 % Ex) (3x2) * (2*3) is valid.    (3x2) * (3*3) is not valid.
 matMult1 = [3 6; 2 9; 8 1];
 matMult2 = [6 7 3; 8 4 5];
 matMultEx = matMult1 * matMult2; %Each element in this array is a dot product.
 % This really isn't used much.
 
 
 % * Inverse Matrix *
 % Basically just the inverse values. Can be found using the inv(x)
 % function or by simply using the .^, matrix must be square however.
 % The abstraction behind the calculation is more than is worth explaining.
 squareMatrix = [2 6 4; 3 8 2; 5 9 4];
 invSquareMatrix = inv(squareMatrix);
 %note this is much different than '.^-1'.
 
 % * Cross Product *
 % These are similar to dot products, but instead of returning a scalar,
 % they return an entire vector. This specific function can be very useful
 % in physics, as cross products are often used to calculate forces and
 % their magnitude.
 % An example using force and the xyz dimensions demonstrates how this works.
 % Once again the abstraction behind this is more than is worth explaining.
 forceVector1 = [1.3, 4.7, 2.9];
 forceVector2 = [1.4, 6.2, 0];
 crossProd = cross(forceVector1, forceVector2);
 
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %            END  (Best of luck on exam)     %
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 

 
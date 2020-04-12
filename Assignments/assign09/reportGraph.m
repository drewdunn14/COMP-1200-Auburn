%{
Drew Dunn, none
none
assign09.m
April 10, 2020
Collaboration Statement:  Heavy reliance on subfunction section in MATLAB
book, as well as plotting syntax. MATLAB documentation on how to format
subplots as well.
reportGraph takes the data receieved from input, scans it for dimensions.
It then immediately differentiates between the wins and losses to form a
seasonal record based on a conditional comparing columns in the score
matrix. It then finds the max differential between scores, as well as
finding the max score in each column for the home and away team
respectively. After this it prints the table for home games only using the
strfind function embedded in a for loop. After this data has been printed
it then formats and prints the data that was sorted/calculated earlier.
It then calls the graphing subfunction that subplots the scores to each game.
%}


%primary function for reportGraph.m
function [] = reportGraph( dates, scores, location, opponent)

[rowDimension, columnDimension] = size(dates); %two variables are needed for correct output.

%The winValue variable shows the amount of games won by returning a vector
%holding the indexes where the condition was found true.
winValue = length( find(scores(:,1) > scores (:,2)));

%This is where data is sorted so it can be sorted correctly as well as
%being indexed correctly
[ calcSpread, indexTool ] = max(abs(scores(:,1) - scores(:,2)));
[ homeScoreMax, homeGames] = max( scores(:,1));
[ awayScoreMax, awayGames ] = max(scores(:,2));

% ***** OUTPUT *****
fprintf('2020 AU Softball Batting Stats as of 03/01\n');
fprintf('Date    Opponent         Score W/L \n');


for i=1:rowDimension %uses dimension of rows variable as criteria to run loop.
    if strfind(location{i}, 'home')
        fprintf('%02.0f/%02.0f ', dates(i,:)); %prints the indexed date of home game.
        fprintf('  %-16s ', opponent{i}); %prints appropriate length of string of indexed opponent name.
        fprintf('%02.0f-%02.0f ', scores(i,:)); %prints score of indexed row.
        
%Use score matrix to compare values in column 1&2 to print correct result of game.
        if scores(i,1) > scores(i,2) %if column1 is greater than column 2, print W.
            fprintf(' W \n');
        else fprintf(' L \n'); %else print L, tie criteria is not necessary.
        end
    end
end
%once loop has been terminated, print table using previously sorted data variables.
fprintf('\nSeason record: \n');
fprintf( 'Wins-Losses:       %d-%d\n', winValue, rowDimension-winValue)
fprintf( 'Largest pt spread: %2d on %02d/%02d \n', calcSpread, dates(indexTool,1),...
    dates(indexTool,2));
fprintf( 'Most AU runs:      %2d on %02d/%02d \n', homeScoreMax, dates(homeGames,1),...
    dates(homeGames,2));
fprintf( 'Most Opp runs:     %2d on %02d/%02d \n', awayScoreMax, dates(awayGames,1),...
    dates(awayGames,2));

%call subfunction graphScores in main function.
graphScores(scores)
end

%subfunction of reportGraph, prints scores in subplots.
function [] = graphScores(scores)
numGames = 1:length(scores(:,1));

subplot(2,1,1) %subplot #1 plots the home team column of scores matrix.
plot(numGames, scores(:,1), 'b-o');
title('2020 AU Softball Scores'); %title for plot
xlabel('Game Number'); %label for x-axis
ylabel('Scores'); %label for y-axis

subplot(2,1,2) %sublot #2 uses same format but uses opponent data.
plot(numGames, scores(:,2), 'p--k');
title('2020 Opponent Softball Scores'); %title for plot
xlabel('Game Number'); %label for x-axis
ylabel('Scores'); %label for y-axis

end
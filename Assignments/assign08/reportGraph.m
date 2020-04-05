%{
Drew Dunn, none
none
assign08.m
April 3, 2020
Collaboration Statement: Heavy Usage and reference to graphing data
files on canvas, as well as heavy usage of function/subfunction examples 
and plotting examples.
ReportGraph contains a function and subfunction that retrieves the matrices
created by textread() and formats them using a fprintf with an embedded
conditional, it also contains a subfunction that bar graphs the scores from
each game to visualize data, this contains a title, labels, and a legend to
make it easier to comprehend what exactly is being represented.
%}


%primary function for reportGraph.m
function [] = reportGraph( date, scores, stats)

% ***** OUTPUT *****
% fprintf for formatting purposes
fprintf('2020 AU Softball Batting Stats as of 03/01\n');
fprintf('Date   Score W/L  AB Runs Hits HRuns  Ave\n');
concatMatrix = [date, scores, stats];

% ***** COMPUTE *****
% All collective averages are calculated within function for ease of use.
aveHomeScore = mean(scores(:,1));
aveAwayScore = mean(scores(:,2));
aveAtBats = mean(stats(:,1));
aveRuns = mean(stats(:,2));
aveHits = mean(stats(:,3));
aveHomeRuns = mean(stats(:,4));
aveBattingAverage = sum(stats(:,3)) / sum(stats(:,1));
aveVector = [aveHomeScore, aveAwayScore, aveAtBats, aveRuns, aveHits,...
    aveHomeRuns, aveBattingAverage]; %concatenating average values for ease of printing.

for i = 1:length(concatMatrix(:,1))
    if scores(i,1) > scores(i,2)
        fprintf('%02d/%02d  %02d-%02d  W  %2d  %2d    %2d    %1d   %5.3f\n', concatMatrix(i,:));
    else
        fprintf('%02d/%02d  %02d-%02d  L  %2d  %2d    %2d    %1d   %5.3f\n', concatMatrix(i,:));
    end
end
fprintf('Ave: 0%3.1f-0%3.1f  %03.1f %3.1f   %3.1f  %3.1f  %5.3f\n', aveVector);
graphScores(scores); %calling of subfunction.
end

function [] = graphScores(scores)
bar(scores, 'stacked'); %calls for scores matrix to graphed as stacked bar graph.
title('2020 AU Softball Scores'); %adds title to the graph that has just been created.
xlabel('Game number'), ylabel('Scores'); %adds labels to the x&y axes.
legend('Auburn','Opponent'); %adds legend to allow viewer to differentiate values on graph.
end


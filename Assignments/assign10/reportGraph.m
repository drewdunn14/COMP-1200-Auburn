%{
Drew Dunn, none
none
reportGraph.m
April 17, 2020
Collaboration Statement: Heavy reliance on MATLAB book, as well as
documentation for figure and pie plotting.
This takes the data retrieved from the file in assign10.m, and performs
various sorting methods to find various values such as the average score in
a variation of settings, and max score in a variation as well. The child
function finds the total runs at home and away, and makes two separate pie
graphs that display the split by Auburn vs. the opponent.
%}


%primary function for reportGraph.m
function [] = reportGraph( dates, conference, location, opponent, scores) %opponent remains unused, but was on rubric input section.

[rowDimension, columnDimension] = size(dates); %two variables are needed for correct indexing and output.


% ***** Sorting(1) - This section differentiates between two types of in-conference games.
%Contents pass through loop and are compared to a conditional to find
%relevant data, this loop finds away and(&&) in-conference games.
rowCount = 1; %Two separate indexing variables are necessary since some data will not meet criteria.
for i=1:rowDimension
    if contains(conference{i}, 'sec') && contains(location{i}, 'at')
        inConfAwayScores(rowCount,1) = scores(i,1);
        inConfAwayScores(rowCount,2) = scores(i,2);
        rowCount = rowCount + 1; %index to continue to add to matrix when criteria is met.
    end
end

%Contents pass through loop and are compared to a conditional to find
%relevant data, this loop finds games @JBM field and(&&) in-conference games.
rowCount = 1; %Two separate indexing variables are necessary since some data will not meet criteria.
for i=1:rowDimension
    if contains(conference{i}, 'sec') && contains(location{i}, 'jm')
        inConfHomeScores(rowCount,1) = scores(i,1);
        inConfHomeScores(rowCount,2) = scores(i,2);
        rowCount = rowCount + 1; %index to continue to add to matrix when criteria is met.
    end
end


% ***** Sorting(2) - This section differentiates between two types of not in-conference games.
%Contents pass through loop and are compared to a conditional to find
%relevant data, this loop finds games @JBM field and(&&) not in-conference games.
rowCount = 1; %Two separate indexing variables are necessary since some data will not meet criteria.
for i=1:rowDimension
    if contains(conference{i}, 'x') && contains(location{i}, 'jm')
        outConfHomeScores(rowCount,1) = scores(i,1);
        outConfHomeScores(rowCount,2) = scores(i,2);
        rowCount = rowCount + 1; %index to continue to add to matrix when criteria is met.
    end
end


%Contents pass through loop and are compared to a conditional to find
%relevant data, this loop finds games @JBM field and(&&) not in-conference games.
rowCount = 1; %Two separate indexing variables are necessary since some data will not meet criteria.
for i=1:rowDimension
    %by using a does not contain statement we reduce the complexity by not
    %using an 'or' conditional that includes both 'gs' and 'fc'
    if ~contains(conference{i}, 'sec') && ~contains(location{i}, 'jm')
        outConfAwayScores(rowCount,1) = scores(i,1);
        outConfAwayScores(rowCount,2) = scores(i,2);
        rowCount = rowCount + 1; %index to continue to add to matrix when criteria is met.
    end
end

% ***** OUTPUT *****
%
 


% ***** Sorting(3) - This section uses the matrices created
% to sort through each and find the highest home and opponent specified
% score for each matrix. Given there were four loops and the rubric
% requires a home and away max for each category, there will be eight
% sorting loops to find the max.

%Finding the max Auburn Score at home when in conference play.
maxInConfHomeAUScore = 0; %initiate variable so it may be assigned the proper value after loop.
for rowIndex=1:length(dates)
    %this states if the criteria is met the specified data will be passed
    %into a conditional, if the conditional is true, a new max score has
    %been found. This repeats until there is no more dates to sort through.
    if contains(conference{rowIndex}, 'sec') && contains(location{rowIndex}, 'jm')
        if scores(rowIndex,1) > maxInConfHomeAUScore
            maxInConfHomeAUScore = scores(rowIndex,1);
            maxInConfHomeAUIndex = rowIndex; 
        end
    end
end


%Finding the max Auburn Score away when in conference play.
maxInConfAwayAUScore = 0; %initiate variable so it may be assigned the proper value after loop.
for rowIndex=1:length(dates)
    %this states if the criteria is met the specified data will be passed
    %into a conditional, if the conditional is true, a new max score has
    %been found. This repeats until there is no more dates to sort through.
    if contains(conference{rowIndex}, 'sec') && ~contains(location{rowIndex}, 'jm')
        if scores(rowIndex,1) > maxInConfAwayAUScore
            maxInConfAwayAUScore = scores(rowIndex,1);
            maxInConfAwayAUIndex = rowIndex; 
        end
    end
end


%Finding the max in-conference Opponent Score when playing at JBM.
maxInConfHomeOppScore = 0; %initiate variable so it may be assigned the proper value after loop.
for rowIndex=1:length(dates)
    %this states if the criteria is met the specified data will be passed
    %into a conditional, if the conditional is true, a new max score has
    %been found. This repeats until there is no more dates to sort through.
    if contains(conference{rowIndex}, 'sec') && contains(location{rowIndex}, 'jm')
        if scores(rowIndex,2) > maxInConfHomeOppScore
            maxInConfHomeOppScore = scores(rowIndex,2);
            maxInConfHomeOppIndex = rowIndex; 
        end
    end
end


%Finding the max in-conference Opponent Score when playing at JBM.
maxInConfAwayOppScore = 0; %initiate variable so it may be assigned the proper value after loop.
for rowIndex=1:length(dates)
    %this states if the criteria is met the specified data will be passed
    %into a conditional, if the conditional is true, a new max score has
    %been found. This repeats until there is no more dates to sort through.
    if contains(conference{rowIndex}, 'sec') && ~contains(location{rowIndex}, 'jm')
        if scores(rowIndex,2) > maxInConfAwayOppScore
            maxInConfAwayOppScore = scores(rowIndex,2);
            maxInConfAwayOppIndex = rowIndex; 
        end
    end
end


%Finding the max Auburn Score at home when out of conference play.
maxOutConfHomeAUScore = 0; %initiate variable so it may be assigned the proper value after loop.
for rowIndex=1:length(dates)
    %this states if the criteria is met the specified data will be passed
    %into a conditional, if the conditional is true, a new max score has
    %been found. This repeats until there is no more dates to sort through.
    if ~contains(conference{rowIndex}, 'sec') && contains(location{rowIndex}, 'jm')
        if scores(rowIndex,1) > maxOutConfHomeAUScore
            maxOutConfHomeAUScore = scores(rowIndex,1);
            maxOutConfHomeAUIndex = rowIndex;
        end
    end
end


%Finding the max Auburn Score at home when out of conference play.
maxOutConfAwayAUScore = 0; %initiate variable so it may be assigned the proper value after loop.
for rowIndex=1:length(dates)
    %this states if the criteria is met the specified data will be passed
    %into a conditional, if the conditional is true, a new max score has
    %been found. This repeats until there is no more dates to sort through.
    if ~contains(conference{rowIndex}, 'sec') && ~contains(location{rowIndex}, 'jm')
        if scores(rowIndex,1) > maxOutConfAwayAUScore
            maxOutConfAwayAUScore = scores(rowIndex,1);
            maxOutConfAwayAUIndex = rowIndex;
        end
    end
end


%Finding the max out of conference Opponent Score when playing at JBM.
maxOutConfHomeOppScore = 0; %initiate variable so it may be assigned the proper value after loop.
for rowIndex=1:length(dates)
    %this states if the criteria is met the specified data will be passed
    %into a conditional, if the conditional is true, a new max score has
    %been found. This repeats until there is no more dates to sort through.
    if ~contains(conference{rowIndex}, 'sec') && contains(location{rowIndex}, 'jm')
        if scores(rowIndex,2) > maxOutConfHomeOppScore
            maxOutConfHomeOppScore = scores(rowIndex,2);
            maxOutConfHomeOppIndex = rowIndex; 
        end
    end
end


%Finding the max out of conference Opponent Score when playing at JBM.
maxOutConfAwayOppScore = 0; %initiate variable so it may be assigned the proper value after loop.
for rowIndex=1:length(dates)
    %this states if the criteria is met the specified data will be passed
    %into a conditional, if the conditional is true, a new max score has
    %been found. This repeats until there is no more dates to sort through.
    if ~contains(conference{rowIndex}, 'sec') && ~contains(location{rowIndex}, 'jm')
        if scores(rowIndex,2) > maxOutConfAwayOppScore
            maxOutConfAwayOppScore = scores(rowIndex,2);
            maxOutConfAwayOppIndex = rowIndex; 
        end
    end
end

%The fprintf statements print data according to the sorting done by the
%conditionals in Sorting(1) and Sorting(2) sections...
fprintf('Season Average Scores by Category \n'); %Title for tabular data and then enter to next line.
fprintf('                  Home        Away \n'); % Home and Away header for tabular data and then enter to next line.
fprintf('                AU    Opp   AU    Opp \n') % labels/header for to differentiate between Auburn and opponents.
fprintf('SEC games      %4.2f  %4.2f  %4.2f  %4.2f \n',...
    mean(inConfHomeScores(:,1)), mean(inConfHomeScores(:,2)),...
    mean(inConfAwayScores(:,1)), mean(inConfAwayScores(:,2))); 
fprintf('nonSEC games   %4.2f  %4.2f  %4.2f  %4.2f \n',...
    mean(outConfHomeScores(:,1)), mean(outConfHomeScores(:,2)),... %%%%%%
    mean(outConfAwayScores(:,1)), mean(outConfAwayScores(:,2)));



fprintf('\n') %spacer
%The fprintf statements below print data according to the variables
%and data sorted by the Sorting(3) functions.
fprintf('Season Highest Scores and Game Dates By Category    \n');
fprintf('                   Home               Away          \n');
fprintf('              Auburn  Opponent   Auburn   Opponent  \n');
fprintf('SEC games    %2d %02d/%02d %2d %02d/%02d  %2d %02d/%02d %2d %02d/%02d \n',...
    scores(maxInConfHomeAUIndex,1), dates(maxInConfHomeAUIndex,:),...
    scores(maxInConfHomeOppIndex,2), dates(maxInConfHomeOppIndex,:),...
    scores(maxInConfAwayAUIndex,1), dates(maxInConfAwayAUIndex,:),...
    scores(maxInConfAwayOppIndex,2), dates(maxInConfAwayOppIndex,:));
fprintf('nonSEC games %2d %02d/%02d %2d %02d/%02d  %2d %02d/%02d %2d %02d/%02d \n',...
    scores(maxOutConfHomeAUIndex,1), dates(maxOutConfHomeAUIndex,:),...
    scores(maxOutConfHomeOppIndex,2), dates(maxOutConfHomeOppIndex,:),...
    scores(maxOutConfAwayAUIndex,1), dates(maxOutConfAwayAUIndex,:),...
    scores(maxOutConfAwayOppIndex,2), dates(maxOutConfAwayOppIndex,:));
pieGraph( dates, location, scores); %calling child/secondary function of reportGraph.m
end
%End of primary function


function [] = pieGraph( dates, location, scores)
[rowDimension, columnDimension] = size(dates); %two variables are needed for correct indexing and output.

%Colors are not needed, as blue and yellow displayed in rubric is default.

%finds the total amount of runs scored at home by making sure location is 'jm'.
totalHome = 0;
runIndex = 1;
for i=1:rowDimension
    if contains(location{i}, 'jm')
        totalHome(runIndex,1) = scores(i,1);
        totalHome(runIndex,2) = scores(i,2);
        runIndex = runIndex + 1;
    end
end


%finds the total amount of runs scored away by making sure location is not 'jm'.
totalAway = 0;
runIndex = 1;
for i=1:rowDimension
    if ~contains(location{i}, 'jm')
        totalAway(runIndex,1) = scores(i,1);
        totalAway(runIndex,2) = scores(i,2);
        runIndex = runIndex + 1;
    end
end

%differentiate between the Auburn runs and Opponent runs for purpose of
%passing data into pie graph.
totalHomeAU = sum(totalHome(:,1));
totalHomeOpp = sum(totalHome(:,2));
totalAwayAU = sum(totalAway(:,1));
totalAwayOpp = sum(totalAway(:,2));

%concat data so it can be easily processed later as a pie graph.
formatPieHomeData = [totalHomeAU, totalHomeOpp];
formatPieAwayData = [totalAwayAU, totalAwayOpp];

%Easy to handle and use label variable can be applied to both graphs
labelGraph = {'Auburn','Opponents'};

pie(formatPieHomeData, labelGraph);
title('Season Total Runs at Jane B Moore Field (home)');

figure %creates a new figure window so that both graphs can display.

pie(formatPieAwayData, labelGraph);
title('Season Total Runs for Away Games');
end
%End of function


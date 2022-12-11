
%{
    
Create clear graphs with the possibility of selecting a quantity (e.g. input to a function)
Add the possibility of choosing a time window (e.g. 7 days, 30 days, etc.)
Option to display medians (e.g. 7d/3d)
Option to add up the number of days in the selected time interval over:
a) a certain established limit
b) median
count the worst time segment (n-days) (most confirmed, hospitalized and most deaths)
count the most positive time segment (n-days) in treatment (most confirmed, least hospitalized
and least deaths)
find the time segment (n-days) with the largest / smallest number of positive / hospitalized / dead
find Time segment (n-days) with the largest / smallest increase in positive / hospitalized / dead
General requirements
- Unique solution
- Simple console menu or GUI
- Individual functionalities as functions
- defense 13. Week - (or 12 after agreement with the training teacher)
- Submission electronically 12/16/2020 until 20:00
- On the exam, a control defense of the work is possible
- brief documentation (a sample of the visualizations and a description of the functionality)
Elaboration and defense of semester work - 15b

%}

% import data from github repo

data = readtable("https://raw.githubusercontent.com/Institut-Zdravotnych-Analyz/covid19-data/main/DailyStats/OpenData_Slovakia_Covid_DailyStats.csv", "PreserveVariableNames",true);


% here, we change our data type string to double, i.e from "NA" to 0

data.AgPosit = str2double(data.AgPosit);
data.AgTests = str2double(data.AgTests);



% asking our user to choose one of 'em

disp('Typ: ');
disp('"1" pre PCR testy');
disp('"2" pre pozitivne PCR testy (vzdy)');
disp('"3" pre pozitivne PCR testy (denne)');
disp('"4" za umrtia (cely cas)');
disp('"5" pre Ag(premerne) testy (denne)');
disp('"6" pre pozitivne Ag(premerne) testy (denne)');
disp('"7" pre hospitalizovaných');
disp('"0" Vystup');


%if we type smth from keyboard from 0-7 do smth, 1 - enables while loop

while 1
  
    % displays in pop-up to choose graph after instructions above
    prompt = "Vyberte graph: ";

    % char = string, nums = double, all unsupported  endtered stuff will change to NaN 
    t = str2double(input(prompt, 's'));
    disp(t);

    
    % if our user has selected on of our above options
    switch (t >= 1 && t <= 7)
        case 1
            printGraph(data, t, 0);
        case 2
            printGraph(data, t, 0);   
        case 3
            printGraph(data, t, 0);
        case 4
            printGraph(data, t, 0);    
        case 5
            printGraph(data, t, 0);
        case 6
            printGraph(data, t, 0);    
        case 7
            printGraph(data, t, 0);
        case 0
            disp("Vystup");
            break;   
        otherwise
            disp("nieco je zle, skuste to znova \n");
            continue;     
    end 
end

function [] = printGraph(data, t, days)


    if (days == 0)
        % calling method bar for displaying our graph
        
        bar(data(:, 1), data(l-days:l, t+1));

    elseif (days == 5 || days == 6) 
        findMedian(data, t, data.Datum);
    else 
        l = length(data(:, 1));
        bar(data(l-days:l, 1), data(l-days:l, t+1))

        
    end


    % set Y axis format
    % only nums which have type double
    ytickformat("%.0f");
    ax = gca;
    ax.YAxis.Exponent = 0;
end   

% fix it
function [] = findMedian(data, t, dates)

    disp("Graf zobrazuje %.0f den/dni", dates(2)-dates(1)+1);
    disp("Median %.3f", median(data{dates(1):dates(2), t+1}));
end











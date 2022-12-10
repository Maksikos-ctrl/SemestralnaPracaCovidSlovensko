
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

data = readtable("https://raw.githubusercontent.com/Institut-Zdravotnych-Analyz/covid19-data/main/DailyStats/OpenData_Slovakia_Covid_DailyStats.csv");


% here, we change our data type string to double, i.e from "NA" to 0

data.AgPosit = str2double(data.AgPosit);
data.AgTests = str2double(data.AgTests);



% asking our user to choose one of 'em

disp('Typ: \n');
disp('"1" pre pozitivne PCR testy (vzdy) \n');
disp('"2" pre PCR testy \n');
disp('"3" pre pozitivne PCR testy (denne) \n');
disp('"4" za umrtia (cely cas) \n');
disp('"5" pre Ag(premerne) testy (denne) \n');
disp('"6" pre pozitivne Ag(premerne) testy (denne) \n');
disp('"7" pre hospitalizovaných \n');
disp('"0" Vystup \n');


%if we type smth from keyboard from 0-7 do smth, 1 - enables while loop
while 1
  
    % displays in pop-up to choose graph after instructions above
    prompt = "Vyberte graph: ";

    % char = string, nums = double, all unsupported  endtered stuff will change to NaN 
    t = str2double(input(prompt, 's'));
    disp(t)

    % if our user has selected on of our above options
    if (t >= 1 && t <= 7)
       
    elseif t == 0
        disp("Vystup");
        break;  
    else 
        disp("nieco je zle, skuste to znova \n");
        continue;
    end
end   


function printGraph(data, t, days)
    if (days == 0)
        % calling method bar for displaying our graph
        
        bar(data(:, 1), data());
    else 
        l = length(data(:, 1));
        bar(data(l-days:l, 1), data(l-days:l, t+1))
    end


    % set Y axis format

    ytickformat("%.0f");
    ax = gca;
    ax.YAxis.Exponent = 0;
end       





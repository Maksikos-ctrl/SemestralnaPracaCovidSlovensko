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

% 1 enables loop, cuz 1 is true in logic contest
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

% 1 enables loop, cuz 1 is true in logic contest
while 1
    clear
    clc
    data = readtable("OpenData_Slovakia_Covid_DailyStats.csv");
    valOfAns;
    in = input(chooseFunc);
    switch in
        % Drawing a graph using given coloumn in data
        case 1  
            val = switchFunc(input(MenuAsk));
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val) == false);

            [from,to] = getData(input("Enter the 'from' date: "), ...
                input("Zadajte datum „do“: "), date);
            if (isstring(from) || isstring(to))
                input("Nesprávny dátum!")
            else
                val = val(from:to);
                date = date(from:to);
                plot(date,val);   
            end

        % Displays graph of the median
        case 2 
            val = switchFunc(input(MenuAsk));
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val)==false);

           [from,to] = getData(input("Zadajte dátum „od“: "), ...
                input("Zadajte dátum „do“: "), date);
            if (isstring(from) || isstring(to))
                input("Nesprávny dátum!")
            else
                val = val(from:to);
                date = date(from:to);
                median_val = median(val);
                plot(date,val);
                yline(median_val, '--');
                disp("Median val = " + median_val);
                input(" ");
            end

        % Counts the number of days above the median and given position
        case 3 
            val = switchFunc(input(MenuAsk));
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val) == false);

            [from,to] = getData(input("Zadajte dátum „od“: "), ...
                input("Zadajte dátum „do“: "), date);
            above_given_poz = 0;
            above_median_line = 0;
            median_val = median(val);
            given_poz = input("Zadajte pozadovanu poziciu: ");
            if (isstring(from) || isstring(to))
                input("Incorrect date!")
            else
                val = val(from:to);
                date = date(from:to);

                for i=1:length(val)
                    if (val(i) > given_poz)
                        above_given_poz = above_given_poz + 1;
                    end
                    if (val(i) > median_val)
                        above_median_line = above_median_line + 1;
                    end
                end

                plot(date,val);
                yline(median_val, '--');
                yline(given_poz, '--');
                input("Vyssie uvedená pozícia -" + above_given_poz + " dni\n" + ...
                    "Nad strednou ciarou - " + above_median_line + " dni\n" );
            end

        % Finds the worst and the best day from the given range    
        case 4 
            val = (switchFuncder_ask());
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val) == false);

            [from,to] = getData(input("Zadajte datum „od“: "), ...
                input("Zadajte datum „do“: "), date);
            if (isstring(from) || isstring(to))
                input("Nespravny datum!")
            else
                val = val(from:to);
                date = date(from:to);
                
                worse = max(val);
                better = min(val);

                worse = date(val == worse);
                better = date(val == better);
                disp("Najhorsi den bol " + string(worse) + ...
                    "   Najlepsi den bol " + string(better) + "\n");
                input(" ");
            end
        case 5 % Finds the best and the worst time period of the whole time
            days = input("Zadajte, kolko dni sa ma zobrazit: ");

            val = switchFunc(input(MenuAsk));
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val) == false);

            worse = val(2);
            better = worse;
            range_better = date(1):date(days);

            for i=1:(length(val)-days)
                count = 0;
                for j=1:days
                    k = j+i-1;
                    if (k > length(val))
                        break
                    end
                    count = count + val(k);
                end
                range = date(i):date(k);
                if (count > worse)
                    worse = count;
                    range_worse = range;
                elseif (count < better && count ~=0)
                    better = count;
                    range_better = range;
                end
            end

            input("Najhorsi segment v tejto dobe je z " + string(range_worse(1))+ ...
                " do " + string(range_worse(end))+...
                "\nNajlepsi segment v tomto case je z " + string(range_worse(1))+ ...
                " do " + string(range_worse(end)))
        case 6 
            val = switchFunc(input(MenuAsk));
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val) == false);

            [from,to] = getData(input("Zadajte datum „od“: "), ...
                input("Zadajte datum „do“: "),date);
            if (isstring(from) || isstring(to))
                input("Nespravny datum!")
            else
                val = val(from:to);
                date = date(from:to);
                plot(date,val);

                derivation = diff(val);

                max_growth = date(derivation==max(derivation));
                min_growth = date(derivation==min(derivation));

                disp("Max = " + max(derivation));
                disp("Min = " + min(derivation));

                disp("Najvyssia pozadovana hodnota zvysujucej sa rychlosti");
                disp(max_growth);
                disp("Najmensia pozadovana hodnota zvysujucej sa rychlosti");
                disp(min_growth);
                input(" ");
            end 
        % Quits the cycle and ends the app
        case 7 
            disp("Vystup...");
            break;
        % If smth wrong was typed, repeats the cycle    
        otherwise 
            disp("Napísali ste nie?o zle");
            continue;
           
    end
end














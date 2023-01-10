%{
    
Create clear graphs with the possibility of selecting a quantity (e.g. input end_date a function)
Add the possibility of choosing a time window (e.g. 7 days, 30 days, etc.)
Option end_date display medians (e.g. 7d/3d)
Option end_date add up the number of days in the selected time interval over:
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
    
Create clear graphs with the possibility of selecting a quantity (e.g. input end_date a function)
Add the possibility of choosing a time window (e.g. 7 days, 30 days, etc.)
Option end_date display medians (e.g. 7d/3d)
Option end_date add up the number of days in the selected time interval over:
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

%{
     

   ___               _      _         _   ___     ___   _                                 _         
  / __|  ___  __ __ (_)  __| |  ___  / | / _ \   / __| | |  ___  __ __  ___   _ _    ___ | |__  ___ 
 | (__  / _ \ \ V / | | / _` | |___| | | \_, /   \__ \ | | / _ \ \ V / / -_) | ' \  (_-< | / / / _ \
  \___| \___/  \_/  |_| \__,_|       |_|  /_/    |___/ |_| \___/  \_/  \___| |_||_| /__/ |_\_\ \___/
                                                                                                    


                                                                                                                            
 %}                                                                                        


% 1 enables loop, cuz 1 is true in logic contest

while 1
    clear
    clc
    data = readtable("OpenData_Slovakia_Covid_DailyStats.csv", "PreserveVariableNames", true);
    optOfAns;
    in = input(obratFunc);
    switch in
        % Drawing a graph using given coloumn in data
        case 1  
            val = switch_func(input(MenuAsk));
            date = data.Datum(~isnat(data.Datum));
            val = rmmissing(val, 1);
            date = date(~isnan(val));

            [start_date, end_date] = get_data(input("Zadajte dátum od"), ...
                input("Zadajte datum do: "), date);
                
            if (isstring(start_date) || isstring(end_date))
                disp("Nespr�vny d�tum!")
            else
                if (start_date > end_date)
                    disp("Nespr�vny rozsah d�tumu!")
                else
                    if (start_date < 1 || end_date > length(val))
                        disp("Nespr�vny rozsah d�tumu!")
                    else
                        val = val(start_date:end_date);
                        date = date(start_date:end_date);
                        plot(date,val);   
                    end
                end
            end

        % Displays graph of the median
        case 2 
            val = switch_func(input(MenuAsk));
            date = data.Datum(~isnat(data.Datum));
            val = rmmissing(val,1);
            date = date(~isnan(val));

           [start_date,end_date] = get_data(input("Zadajte datum od: "), ...
                input("Zadajte datum do: "), date);
                
           if (isstring(start_date) || isstring(end_date))
                disp("Nespravny datum!")
           else
                val = val(start_date:end_date);
                date = date(start_date:end_date);
                median_val = median(val);
                plot(date,val);
                yline(median_val, '--');
                disp("Median val = " + median_val);
                input(" ");
            end
            
            

        % Counts the number of days above the median and given position
        case 3 
            val = switch_func(input(MenuAsk));
            date = data.Datum(~isnat(data.Datum));
            val = rmmissing(val,1);
            date = date(isnan(val)==false);

            [start_date,end_date] = get_data(input("Zadajte datum oda: "), ...
                input("Zadajte datum do: "), date);

            above_needed_pos = 0;
            above_median = 0;
            median_val = median(val);

            given_poz = input("Zadajte pozadovanu poziciu: ");

            if (isstring(start_date) || isstring(end_date))
                input("Incorrect date!")
            else
                val = val(start_date:end_date);
                date = date(start_date:end_date);
                
                if (val(1) > given_pos)
                    above_needed_pos = above_needed_pos + 1;
                end
                
                if (val(1) > median_val)
                    above_median = above_median + 1;
                end
                
                for i=2:length(val)
                    if (val(i) > given_pos)
                        above_needed_pos = above_needed_pos + 1;
                    end
                    if (val(i) > median_val)
                        above_median = above_median + 1;
                    end
                    if (val(i) < val(i-1))
                        input("Nespravny zoradeny zoznam")
                    end
                end
                
                plot(date,val);
                yline(median_val, '--');
                yline(given_poz, '--');
                input("Vyssie uvedena pozicia - " + above_needed_pos + " dni\n" + ...
                    "Nad strednou ciarou - " + above_median + " dni\n" );
            end

        % Finds the worst and the best day start_date the given range    
        case 4 
            val = switch_func(input(MenuAsk));
            date = data.Datum(~isnat(data.Datum));
            val = rmmissing(val,1);
            date = date(~isnan(val)); 

            [start_date,end_date] = get_data(input("Zadajte datum od: "), ...
                input("Zadajte datum do: "), date);
                
           if (isstring(start_date) || isstring(end_date))
                disp("Nespravny datum!")
            else
                val = val(start_date:end_date);
                date = date(start_date:end_date);

                worse = max(val);
                better = min(val);

                worse = date(val == worse);
                better = date(val == better);
                disp("Najhorsi den bol " + string(worse) + ...
                    "   Najlepsi den bol " + string(better) + "\n");
                input(" ");
            end

       % Finds the best and the worst time period of the whole time
        case 5 
            days = input("Zadajte, kolko dni sa ma zobrazit: ");

            val = switch_func(input(MenuAsk));
            date = data.Datum(~isnat(data.Datum));
            val = rmmissing(val,1);
            date =date(~isnan(val));

            worse = val(2);
            better = worse;
            range_better = date(1):date(days);

                        

            for i = 1:(length(val) - days + 1)
                count = 0;
                for j = 1:days
                    count = count + val(i + j - 1);
                end
                range = date(i):date(i + days - 1);
                if (count > worse && count ~= 0)
                    worse = count;
                    range_worse = range;
                elseif (count < better && count ~= 0)
                    better = count;
                    range_better = range;
                end
            end
            

            input("Najhorsi segment v tejend_date dobe je z " + string(range_worse(1))+ ...
                " do " + string(range_worse(end))+...
                "\nNajlepsi segment v end_datemend_date case je z " + string(range_worse(1))+ ...
                " do " + string(range_worse(end)))

        
        case 6 
            val = switch_func(input(MenuAsk));
            date = data.Datum(~isnat(data.Datum)); 
            val = rmmissing(val,1);
            date = date(isnan(val)==false);

            [start_date,end_date] = get_data(input("Zadajte datum od: "), ...
                input("Zadajte datum do: "), date);

            if (~isstring(start_date) && ~isstring(end_date) && start_date < end_date)
                val = val(start_date:end_date);
                date = date(start_date:end_date);
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
            else
                input("Nespravny datum!")
            end 

        % Quits the cycle and ends the app
        case 7 
            disp("Vystup...");
            break;

        % If smth wrong was typed, repeats the cycle    
        otherwise 
            disp("Napisali ste nieco zle");
            continue;
           
    end
end
















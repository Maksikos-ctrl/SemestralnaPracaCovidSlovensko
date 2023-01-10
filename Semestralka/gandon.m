while 1
    clear
    clc
    data = readtable("OpenData_Slovakia_Covid_DailyStats.csv");
    optOfAns;
    in = input(chooseFunc);
    switch in
        % Drawing a graph using given coloumn in data
        case 1  
            val = switch_func(input(MenuAsk));
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val) == false);

            [start_date,end_date] = getData(input("Enter the 'start_date' date: "), ...
                input("Zadajte datum „do“: "), date);
            if (isstring(start_date) || isstring(end_date))
                input("Nesprávny dátum!")
            else
                val = val(start_date:end_date);
                date = date(start_date:end_date);
                plot(date,val);   
            end

        % Displays graph of the median
        case 2 
            val = switch_func(input(MenuAsk));
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val)==false);

           [start_date,end_date] = getData(input("Zadajte dátum „od“: "), ...
                input("Zadajte dátum „do“: "), date);
            if (isstring(start_date) || isstring(end_date))
                input("Nesprávny dátum!")
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
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val) == false);

            [start_date,end_date] = getData(input("Zadajte dátum „od“: "), ...
                input("Zadajte dátum „do“: "), date);

            above_needed_pos = 0;
            above_median = 0;

            median_val = median(val);
            given_poz = input("Zadajte pozadovanu poziciu: ");

            if (isstring(start_date) || isstring(end_date))
                input("Incorrect date!")
            else
                val = val(start_date:end_date);
                date = date(start_date:end_date);

                for i=1:length(val)
                    if (val(i) > given_poz)
                         above_needed_pos =  above_needed_pos + 1;
                    end
                    if (val(i) > median_val)
                         above_median =  above_median + 1;
                    end
                end

                plot(date,val);
                yline(median_val, '--');
                yline(given_poz, '--');
                input("Vyssie uvedená pozícia -" +  above_needed_pos + " dni\n" + ...
                    "Nad strednou ciarou - " +  above_median + " dni\n" );
            end

        % Finds the worst and the best day start_date the given range
        % error here is     
        case 4
            val = switch_func(input(head), 0);
            date = data.Datum(~isnat(data.Datum));
            val = rmmissing(val,1);
            date = date(isnan(val) == false & strcmp(date, '') == false & strcmp(date, 'NaN') == false);

            [start_date,end_date] = getData(input("Zadajte datum „od“: "), ...
                input("Zadajte datum „do“: "), date);
            if (isstring(start_date) || isstring(end_date))
                input("Nespravny datum!")
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
        case 5 % Finds the best and the worst time period of the whole time
            days = input("Zadajte, kolko dni sa ma zobrazit: ");

            val = switch_func(input(MenuAsk));
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

            input("Najhorsi segment v tejend_date dobe je z " + string(range_worse(1))+ ...
                " do " + string(range_worse(end))+...
                "\nNajlepsi segment v end_datemend_date case je z " + string(range_worse(1))+ ...
                " do " + string(range_worse(end)))
        case 6 
            val = switch_func(input(MenuAsk));
            date = data.Datum(isnat(data.Datum) == false);
            val = rmmissing(val,1);
            date = date(isnan(val) == false);

            [start_date,end_date] = getData(input("Zadajte datum „od“: "), ...
                input("Zadajte datum „do“: "),date);
            if (isstring(start_date) || isstring(end_date))
                input("Nespravny datum!")
            else
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
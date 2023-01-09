function [start_date,end_date] = getData(start_date,end_date,date)
    for i=1:length(date)
        if (string(date(i)) == string(start_date))
            start_date = i;
        elseif (string(date(i)) == string(end_date))
            end_date = i;
        end
    end
end



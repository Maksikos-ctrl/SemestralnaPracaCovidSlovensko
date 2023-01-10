% This function determines the start and end date of the data set
%This function receives a start date and an end date, and returns the index
%of the start date and the index of the end date in the date vector. It
%receives the date vector as well.

function [start_date,end_date] = get_data(start_date,end_date,date)
    for i=1:length(date)
        if (string(date(i)) == string(start_date))
            start_date = i;
        elseif (string(date(i)) == string(end_date))
            end_date = i;
        end
    end
    if (start_date > end_date)
        error('Start date must be before end date');
    end

end




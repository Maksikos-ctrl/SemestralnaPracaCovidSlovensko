function [from,to] = getData(from,to,date)
    for i=1:length(date)
        if (string(date(i)) == string(from))
            from = i;
        elseif (string(date(i)) == string(to))
            to = i;
        end
    end
end
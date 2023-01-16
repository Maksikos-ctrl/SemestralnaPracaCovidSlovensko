function [minH] = minimum(vektor)
% vektor = [5 2 3 1 5 2] ; 

    minH=vektor(1);
    for i=2:length(vektor)
        if minH>vektor(i)
           minH=vektor(i); 
        end
    end

% minH
% end
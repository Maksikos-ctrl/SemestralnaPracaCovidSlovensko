function [triNajDni,index,minTep,maxTep,priemerT] = teplota(tep,pocetDni)

%  tep = randi([-10,25],1,30)

minTep = minimum(tep)
maxTep = max(tep)
priemerT = mean(tep)


tep3 = sum(tep(1:pocetDni));
index=1;

for i=1:length(tep)-2
    if sum(tep(i:i+pocetDni-1)) > tep3
        tep3 = sum(tep(i:i+pocetDni-1));
        index=i;
    end
end

tep
tep3
triNajDni=[tep(index:index+pocetDni-1)]

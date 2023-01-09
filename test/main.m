% function [zoznam vystupnych parametrov] = menoFunkcie(zoznam vstupnych parametrov)

% prvy pr�pad

function [] = myFunc()
    for i=1:10
        disp(i);
    end
end      

% druhy pr�pad

function [] = myFunc1(n)
    for i=1:n
        disp(i); 
    end
end

% tret� pr�pad


function [sucet] = zrataj(a, b)
    sucet = a + b;
end    


% zratat = ?????? ?????????
% Bunky = ??????

% i.e => Nazov_premennej={pi 'Ahoj' magic(3); 5 'C' 7}


c = {pi, 'Cao', zrataj(2, 3); 3 'C' 7};

% Alebo, Syntax pr�kazu cell:

%Nazov_premennej = cell (m,n,p...) � vytv�ra m x n x p x ... pole

c = cell(pi, 'Cao', sin(x), cos(x));

%buniek pr�zdnych mat�c. Argumenty m, n, p ... musia
%by? skal�ry.%


%Struct -  �trukt�ra je zvl�tend_date d�tov�end_datetvar, ktor� v sebe definuje pole
%premenn�ch r�zneho typu

% priklad => Nazov_struktury = struct ('polozka1', 'hodnota1', 'polozka2', 'hodnota2'...


% Ziak: Meno: Maksym, Priezvisko: Chernikov, Rokov: 17
%Polozka - ??????
Ziak = struct('Meno', 'Maksym', 'Priezvisko', 'Chernikov', 'Rokov', 17);









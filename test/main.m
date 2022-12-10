% function [zoznam vystupnych parametrov] = menoFunkcie(zoznam vstupnych parametrov)

% prvy prípad

function [] = myFunc()
    for i=1:10
        disp(i);
    end
end      

% druhy prípad

function [] = myFunc1(n)
    for i=1:n
        disp(i); 
    end
end

% tretí prípad


function [sucet] = zrataj(a, b)
    sucet = a + b;
end    


% zratat = ?????? ?????????
% Bunky = ??????

% i.e => Nazov_premennej={pi 'Ahoj' magic(3); 5 'C' 7}


c = {pi, 'Cao', zrataj(2, 3); 3 'C' 7};

% Alebo, Syntax príkazu cell:

%Nazov_premennej = cell (m,n,p...) – vytvára m x n x p x ... pole

c = cell(pi, 'Cao', sin(x), cos(x));

%buniek prázdnych matíc. Argumenty m, n, p ... musia
%by? skaláry.%


%Struct -  Štruktúra je zvláštny dátový útvar, ktorý v sebe definuje pole
%premenných rôzneho typu

% priklad => Nazov_struktury = struct ('polozka1', 'hodnota1', 'polozka2', 'hodnota2'...


% Ziak: Meno: Maksym, Priezvisko: Chernikov, Rokov: 17
%Polozka - ??????
Ziak = struct('Meno', 'Maksym', 'Priezvisko', 'Chernikov', 'Rokov', 17);









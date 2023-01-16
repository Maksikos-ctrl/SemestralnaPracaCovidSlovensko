%{


● Napíšte program „Kalkulačka“. Program očakáva na vstupe dve čísla. Následne
program užívateľa vyzve, aby si vybral jednu zo štyroch možností (1-sčítanie, 2-
odčítanie, 3-násobenie, 4-delenie). Pomocou príkazu switch vykonajte príslušnú
voľby a výsledok vypíšte na obrazovku


● Napíšte algoritmus, ktorý vygeneruje náhodné číslo z intervalu od 1 po 5.
Následne nechá užívateľa hádať vygenerované číslo. Keď užívateľ číslo uhádne,
program sa ukončí.

● Napíšte algoritmus, ktorý bude načítavať čísla z klávesnice až pokiaľ užívateľ
nezadá číslo 0. Následne vypíšte súčet a priemer zadávaných čísiel

● Napíšte algoritmus, ktorý vygeneruje v cykle náhodné čísla z intervalu od 1 po
1000. Program sa ukončí vtedy, keď je vygenerované číslo z intervalu <170, 210).
Napíšte koľko krát daný cyklus prebehol.

● Napíšte nekonečný cyklus pomocou cyklu while


● Hráme hru. Program na začiatku vygeneruje tajné číslo v intervale (0,20).
Následne necháme počítač hádať tajné číslo (znova cez náhodné generovanie) v
cykloch. Maximálny počet opakovaní cyklu je 10. Ak počítač uhádne tajné číslo,
cyklus sa ukončí skôr. Na záver vypíšte, či počítač uhádol tajné číslo a ak áno, tak
na koľkí pokus.


● Napíšte cyklus, ktorý prebehne 14 krát. V cykle generujte náhodné čísla z
intervalu (0,10). Spočítajte súčet generovaných čísiel, pre ktoré platí, že sú väčšie
ako 5. Použite príkaz continue


%}

% Kalkulacka
p = input('Zadaj prve cislo: ');
d = input('Zadaj druhe cislo: ');
ch = input('1-sčítanie, 2-odčítanie, 3-násobenie, 4-delenie)');

switch ch
    case 1
        vysledok = p + d;
        fprintf('Vysledok scitania je: %d\n', vysledok);
    case 2
        vysledok = p - d;
        fprintf('Vysledok odcitania je: %d\n', vysledok);
    case 3
        vysledok = p * d;
        fprintf('Vysledok odcitania je: %d\n', vysledok);
    case 4
        vysledok = p / d;
        fprintf('Vysledok odcitania je: %f\n', vysledok);
    otherwise
        fprintf('Zadali ste zlu volbu\n');      
end


% Hádanie čísla

r = randi(1, 5);

while 1
    cislo = input('Zadaj cislo: ');
    if cislo == r
        fprintf('Uhádol si cislo: %d\n', r);
        break;
    elseif(cislo == "")
        fprintf('Zadajte CISLO');  
    else
        fprintf('Nespravne, skus znova\n');
    end
end

% Načitat čislo z klavesnice

% store sum of nums entered
sum = 0;
% var to keep track num of input nums
count = 0;

while 1
    num = input('Zadaj cislo (0 aby ukoncit): ');
    
    if num == 0
        break;
    end

    sum = num + sum; 
    count = count + 1;
end

% ~= means !=

if count ~= 0 
    average = sum / count;   
    fprintf('Sucet cisiel je: %d\n', sum);
    fprintf('Priemer cisiel je: %d\n', average);
else 
    fprintf('Nic z cisiel niebolo zadane');

end



% kolko krat priebehal cycle

count = 0;

while 1
    range_nums = randi([1, 1000]);
    count = count + 1;
    if range_nums >= 170 && range_nums <= 210
        break;
    end
end    
fprintf('Teno cyklul prebehol: %d krat\n', count);


% nekonecny loop while

cout = 0;

while 1
 
    cout = cout + 1;

end    


% Hra pohadny cislo v intervale


secret_range = randi(0, 20);
count = 0;

while count < 10

    word_range = randi(0, 20);
    cout = cout + 1;

    if word_range == secret_range 
        fprintf("pocitac uhadnul secret num za: %d pokusov");
        break
    end    



end

if count == 10  
    fprintf("Bohuzial, pocitac neuhadnul secret num :((((");
end


% sucet cisel v cycle jaky vacsie nez 5

count = 0;

for i = 1:14

    gen_nums = randi(range([0, 14]));

    if gen_nums <= 5
        continue;
    end 
    
    count = gen_nums + count;


end 

fprintf("suma cisiel jaky vacsie nez 5 je: %d\n", count);







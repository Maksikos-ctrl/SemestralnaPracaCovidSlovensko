% Ulohy

%{
    

● Napíšte program, ktorý načíta číslo z klávesnice. Ak je toto číslo väčšie ako 10,
pripočítajte k číslu hodnotu 10. Výsledok vypíšte na obrazovku

● Napíšte program, ktorý načíta číslo, ktoré reprezentuje sumu za produkt. Ak táto suma
bude väčšia ako 100, program vyzve užívateľa aby zadal zľavu v percentách (od 0 po 100).
Následne program vypočíta celkovú sumu podľa zadanej zľavy a vypíše údaje na
obrazovku

● Napíšte program, ktorý načíta číslo. Ak je číslo väčšie ako 20, od čísla odpočíta hodnotu
10. V opačnom prípade pripočíta hodnotu 5. Výsledok vypíšte

● Napíšte program, ktorý načíta číslo a vypíše, či je číslo kladné, záporné alebo rovné nule.

● Napíšte program, ktorý načíta dve čísla. Zistite, či sú obe čísla kladné. Ak áno tak vypíšte
ich súčet. V opačnom prípade vypíšte ich súčin

● Napíšte program, ktorý načíta postupne 5 čísiel z klávesnice. Nájdite maximum a vypíšte,
koľké v poradí bolo zadané

● Načítajte číslo z klávesnice. Pomocou funkcie mod zistite, či je číslo párne alebo nepárne.

● Načítajte číslo z klávesnice. Pomocou funkcie mod zistite, či je číslo deliteľné 5 bezo
zvyšku.

● Napíšte program, ktorý načíta postupne 5 čísiel z klávesnice. Zistite, koľko čísiel je
párnych.

● Napíšte program, ktorý zistí koľko miestne je zadané číslo z klávesnice. 10 – dvojmiestne,
5 – jednomiestne, 123 – trojmiestne. (predpokladajme, že maximálny počet miest je 5)

● Napíšte program, ktorý načíta číslo z klávesnice a zistí, či sa nachádza v intervale <10,20).

● Vygenerujte náhodné číslo od 0 po 1000. Koľko 7-čiek obsahuje náhodne vygenerované
číslo

● Napíšte program „Kalkulačka“. Program očakáva na vstupe dve čísla. Následne
program užívateľa vyzve, aby si vybral jednu zo štyroch možností (1-sčítanie, 2-
odčítanie, 3-násobenie, 4-delenie). Pomocou príkazu switch vykonajte príslušnú
voľby a výsledok vypíšte na obrazovku.



%}

% 1 Uloha

num = input('Enter a number: ');
if num > 10
    num = num + 10;
end
disp(num);

% 2 uloha

sum = input('Enter the sum for the product: ');
if sum > 100
    discount = input('Enter the discount in percent: ');
    sum = sum * (1 - discount / 100);
end
disp(sum);

% 3 uloha

num = input('Enter a number: ');
if num > 20
    num = num - 10;
else
    num = num + 5;
end
disp(num);


% 4 uloha


num = input('Enter a number: ');
if num > 20
    num = num - 10;
else
    num = num + 5;
end
disp(num);


% 5 uloha

num1 = input('Enter the first number: ');
num2 = input('Enter the second number: ');
if num1 > 0 && num2 > 0
    sum = num1 + num2;
    disp(['The sum of the numbers is ' num2str(sum)]);
else
    product = num1 * num2;
    disp(['The product of the numbers is ' num2str(product)]);
end

% 6 uloha


numbers = zeros(1, 5); 
for i = 1:5
   numbers(i) = input(sprintf('Zadajte %d. cislo: ', i));
end


[max_number, max_index] = max(numbers);


fprintf('Maximum bolo zadane ako %d. cislo a ma hodnotu %d.\n', max_index, max_number);


% alebo

max_num = -inf;
for i = 1:5
    num = input(['Enter number ' num2str(i) ': ']);
    if num > max_num
        max_num = num;
        max_num_order = i;
    end
end
disp(['The maximum number is ' num2str(max_num) ', which was entered in the ' num2str(max_num_order) '. position']);


% 7 uloha

number = input('Zadajte cislo: ');


if mod(number, 2) == 0
   disp('Cislo je parne.');
else
   disp('Cislo je neparne.');
end

% 8 uloha



number = input('Zadajte cislo: ');

% Zistenie, ci je cislo delitelne 5 bez zvysku
if mod(number, 5) == 0
   disp('Cislo je delitelne 5 bez zvysku.');
else
   disp('Cislo nie je delitelne 5 bez zvysku.');
end


% 9 uloha


numbers = zeros(1, 5); % Inicializacia pola pre uchovanie cisel
for i = 1:5
   numbers(i) = input(sprintf('Zadajte %d. cislo: ', i));
end

% Zistenie, kolko cisel je parnych
num_even = sum(mod(numbers, 2) == 0);
disp(['Pocet parnych cisel: ' num2str(num_even)]);

% 10 uloha

% Nacitanie cisla z klavesnice
number = input('Zadajte cislo: ');

% Zistenie, kolko miest ma cislo
num_digits = floor(log10(number)) + 1;
if num_digits == 1
   disp('Cislo je jednomiestne.');
elseif num_digits == 2
   disp('Cislo je dvojmiestne.');
elseif num_digits == 3
   disp('Cislo je trojmiestne.');
elseif num_digits == 4
   disp('Cislo je stvoromiestne.');
elseif num_digits == 5
   disp('Cislo je patromiestne.');
else
   disp('Cislo ma viac ako 5 miest.');
end


% 11 uloha

% Nacitanie cisla z klavesnice
number = input('Zadajte cislo: ');

% Zistenie, ci cislo patri do intervalu <10, 20)
if number >= 10 && number < 20
   disp('Cislo patri do intervalu <10, 20).');
else
   disp('Cislo nepatri do intervalu <10, 20).');
end


% 12 uloha

% Vygenerovanie nahodneho cisla od 0 po 1000
number = randi([0 1000]);

% Zistenie, kolko 7-ciek obsahuje cislo
num_sevens = length(strfind(num2str(number), '7'));

% Vypis vysledku
disp(['Cislo ' num2str(number) ' obsahuje ' num2str(num_sevens) ' 7-ciek.']);


% Kalkulacka


% Nacitanie cisel z klavesnice
num1 = input('Zadajte prve cislo: ');
num2 = input('Zadajte druhe cislo: ');

% Nacitanie volby uzivatela
choice = input(['Vyberte operaciu: 1-scitanie, 2-odcitanie, 3-nasobenie, 4-delenie\n' ...
        'Vasa volba: '], 's');

% Vykonanie operacie
switch choice
    case '1'
        result = num1 + num2;
        disp(['Vysledok scitania: ' num2str(result)]);
    case '2'
        result = num1 - num2;
        disp(['Vysledok odcitania: ' num2str(result)]);
    case '3'
        result = num1 * num2;
        disp(['Vysledok nasobenia: ' num2str(result)]);
    case '4'
        result = num1 / num2;
        disp(['Vysledok delenia: ' num2str(result)]);
    otherwise
        disp('Neplatna volba.');
end




















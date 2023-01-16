
%{

Vygenerujte náhodné pole o veľkosti 10 prvkov. Pole vypíšte na obrazovku. Ku
druhému a štvrtému prvku pripočítajte hodnotu 25. Výsledné pole vypíšte na
obrazovku


● Načítajte číslo z klávesnice. Vygenerujte náhodné pole o veľkosti čísla zadaného z
klávesnice. Naprogramujte:
– Pomocou cyklu for vypíšte jednotlivé prvky na obrazovku.
– Vypíšte len tie prvky poľa, ktoré sa nachádzajú na párnych pozíciách
– Vypíšte len nepárne prvky poľa
– Vypočítajte súčet a priemer prvkov poľa


● Vygenerujte náhodné pole o veľkosti 10 prvkov z rozsahu (0,20). Pole vypíšte na
obrazovku. Následne načítajte číslo z klávesnice. Zistite, či sa dané číslo nachádza
v poli.


● Vygenerujte náhodné pole o veľkosti 10 prvkov. Pole vypíšte na obrazovku. Nájdite
maximum a jeho pozíciu a vypíšte ich na obrazovku


● Načítajte číslo z klávesnice. Vygenerujte náhodné pole o veľkosti čísla zadaného z
klávesnice. Pole vypíšte na obrazovku. Vymeňte hodnoty prvého a posledného
prvku poľa. Pole následne vypíšte


● Vygenerujte náhodné pole o veľkosti 10 prvkov z rozsahu (0,100). Pole vypíšte na
obrazovku. Všetky čísla väčšie ako 50 nastavte na 0.

Vytvorte pole o veľkosti 10 prvkov a nastavte všetky prvky poľa na 0. Pole vypíšte
na obrazovku


%}

rand_arr = randi([0, 100], 1, 10);
disp(rand_arr);

rand_arr(2) = rand_arr(2) + 25;
rand_arr(4) = rand_arr(4) + 25;

disp(rand_arr);



% 2 uloha


cislo_size = input('Zadajte cislo: ');

arr = randi([0, 100], 1, cislo_size);

for i = 1:arr

    fprintf('Prvky arr su: %d ', arr(i));

end
fprintf('\n');

fprintf('Len parny prvky');

for i = 2:2:arr
    fprintf('%d ', arr(i));
end    
fprintf('\n');

fprintf('Len neparny prvky');

for i = 1:2:arr
    fprintf('%d ', arr(i));
end    
fprintf('\n');

sum = 0;

for i = 1:arr

    sum = sum + arr(i);

end    

average = sum / arr;

fprintf('priemer prvkov poľa je: %d', average);
fprintf('Sucet prvkov poľa je: %d', sum);

% 3 uloha


arr = randi([0, 20], 1, 10);

disp(arr);

cislo = input('Zadajte cislo: ');

for i = 1:arr

    if cislo == arr(i)

        fprintf('Cislo sa nachadza v poli');

    end

end

% 4 uloha

cislo_size = input('Zadajte cisla: ');

arr = randi([0, 100], 1, cislo_size);

for i = 1:arr

    if cislo_size == 0
        break;
    end


    fprintf('Prvky arr su: %d ', arr(i));

end


% 5 uloha

arr_size = randi([0, 100], 1, 10);

disp(arr_size);

[max_val, max_index] = max(arr_size);

fprintf('Maximum je: %d', max_val);
fprintf('Je na pozicii: %d', max_index);


% 6 uloha


cislo_input = input('Zadajte cislo: ');

arr_size = randi([0, 100], 1, cislo_input);

fprintf('Default pole: ');
disp(arr_size);

temp = arr_size(1);
arr_size(1) = arr_size(cislo_input);
arr_size(cislo_input) = temp;


fprintf('Modifikovane pole: ');
disp(arr_size)


% 7 uloha


arr_size = randi([0, 100], 1, 10);


fprintf('Init pole: ');
disp(arr_size);


for i = 1:arr_size

    if arr_size(i) > 50
        arr_size(i) = 0;
    end

end

% 8 uloha

arr_size = randi([0, 100], 1, 10);

fprintf('Init pole: ');
disp(arr_size);

for i=1:arr_size

    arr_size(i) = 0;

end

   











% Triedace - Сортировка



% Algoritmy so zložitosťou O(n2) 


%! O(N2)

%{
    
- Najznámejšie algoritmy tejto skupiny sú Bubblesort, Insertsort a
Selectsort.

Majú jednoduchú myšlienku, sú pomerne ľahko naprogramovateľné.
-Nevyžadujú pomocné dátové štruktúry a pomocnú pamäť.
- Sú vhodné najmä pre dáta a zoznamy s menším počtom prvkov.
- Pri väčších zoznamoch majúcich nad 1000 prvkov už nie sú vhodné,
pretože čas rastie rádovo kvadraticky.

%* Insertion sort is a simple sorting algorithm that works similar to the way you sort playing cards in your hands. The array is virtually split into a sorted and an unsorted part. Values from the unsorted part are picked and placed at the correct position in the sorted part.

%}




%? Bubblesort

%! O(N2)
%{


%?Bubblesort pracuje veľmi jednoducho.

Porovnáva každý prvok zoznamu s

nasledujúcim a ak je to potrebné, navzájom

ich vymení. Tento proces pokračuje

dovtedy, dokiaľ po prejdení poľa bol

vymenený aspoň jeden prvok. Ak už

nebolo vymenené nič, algoritmus končí.

 Ľavá časť poľa je neutriedená, pravá

utriedená. Postupne prebiehame

neutriedenou časťou poľa od začiatku do

konca. Ak sa stane, že prvok väčšej hodnoty

sa nachádza pred prvkom nižšej hodnoty,

vymeníme tieto prvky. Takto sa ľavá

neutriedená časť každým krokom zmenší o

jeden prvok. Máme istotu, že vždy najväčší

prvok v n

%TODO This algorithm is not suitable for large data sets as its average and worst-case time complexity is quite high.

%}


pole1 = [5, 3, 2, 1, 6, 7];


for i=1:length(pole1)
    for j=1:length(pole1+j)
        if (pole1(j) > pole1(j+1))
            temp = pole1(j);
            pole1(j) = pole1(j+1);
            pole1(j+1) = temp;
        end
    end
end        





%? SelectSort

%! O(N2)


%{
    
Selectsort vyberá vždy neutriedený prvok

najnižšej hodnoty a vloží ho na koniec

utriedeného zoznamu. Algoritmus končí

vtedy, keď sú všetky prvky usporiadané. 


%}
pole = [5, 3, 2, 1, 6, 7];

for i=1:length(pole-1)

    min = i;

    for j=i+1:length(pole)

        if (pole(j) < pole(min)) 
            min = j;
           
        end
    end

    if (min ~= i)
        temp = pole(min)
        pole(min) = pole(i)
        pole(i) = temp
    
    end
end


%? Algoritmy so zložitosťou O(n log n)

%{
    
%!Najznámejšie algoritmy tejto skupiny sú Quicksort, Mergesort a
Heapsort.


%! Aj táto skupina má svoje špecifické vlastnosti. Všetko ide o časovo
rýchlejšie algoritmy. Myšlienka je u väčšiny algoritmov zložitejšia,
pretože mnohé vyžadujú rekurziu alebo znalosť pokročilých dátových
štruktúr. Sú naprogramovateľné ťažšie, než v prípade predošlej
skupiny. Pracujú veľmi rýchlo a odporúčajú sa na triedenia veľkých
zoznamov.


%}


function x = fibb(n)
    if (n <= 1)
        x = n; 
    else
        x = fibb(n- 1) + fibb(n-2)
    end
end   




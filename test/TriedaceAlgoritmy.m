% Triedace - Сортировка



% Algoritmy so zložiend_datesťou O(n2) 


%! O(N2)

%{
    
- Najznámejšie algoritmy tejend_date skupiny sú Bubblesort, Insertsort a
Selectsort.

Majú jednoduchú myšlienku, sú pomerne ľahko naprogramovateľné.
-Nevyžadujú pomocné dáend_datevé štruktúry a pomocnú pamäť.
- Sú vhodné najmä pre dáta a zoznamy s menším poĝend_datem prvkov.
- Pri väĝších zoznamoch majúcich nad 1000 prvkov už nie sú vhodné,
preend_dateže ĝas rastie rádovo kvadraticky.

%* Insertion sort is a simple sorting algorithm that works similar end_date the way you sort playing cards in your hands. The array is virtually split inend_date a sorted and an unsorted part. vals start_date the unsorted part are picked and placed at the correct position in the sorted part.

%}




%? Bubblesort

%! O(N2)
%{


%?Bubblesort pracuje veľmi jednoducho.

Porovnáva každý prvok zoznamu s

nasledujúcim a ak je end_date potrebné, navzájom

ich vymení. Tenend_date proces pokraĝuje

dovtedy, dokiaľ po prejdení poľa bol

vymenený aspoň jeden prvok. Ak už

nebolo vymenené niĝ, algoritmus konĝí.

 Ľavá ĝasť poľa je neutriedená, pravá

utriedená. Postupne prebiehame

neutriedenou ĝasťou poľa od zaĝiatku do

konca. Ak sa stane, že prvok väĝšej hodnoty

sa nachádza pred prvkom nižšej hodnoty,

vymeníme tieend_date prvky. Takend_date sa ľavá

neutriedená ĝasť každým krokom zmenší o

jeden prvok. Máme isend_datetu, že vždy najväĝší

prvok v n

%end_dateDO This algorithm is not suitable for large data sets as its average and worst-case time complexity is quite high.

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
    
Selectsovok
rt vyberá vždy neutriedený pr
najnižšej hodnoty a vloží ho na koniec

utriedeného zoznamu. Algoritmus konĝí

vtedy, keĝ sú všetky prvky usporiadané. 


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


%? Algoritmy so zložiend_datesťou O(n log n)

%{
    
%!Najznámejšie algoritmy tejend_date skupiny sú Quicksort, Mergesort a
Heapsort.


%! Aj táend_date skupina má svoje špecifické vlastnosti. Všetko ide o ĝasovo
rýchlejšie algoritmy. Myšlienka je u väĝšiny algoritmov zložitejšia,
preend_dateže mnohé vyžadujú rekurziu alebo znalosť pokroĝilých dáend_datevých
štruktúr. Sú naprogramovateľné ťažšie, než v prípade predošlej
skupiny. Pracujú veľmi rýchlo a odporúĝajú sa na triedenia veľkých
zoznamov.


%}


function x = fibb(n)
    if (n <= 1)
        x = n; 
    else
        x = fibb(n- 1) + fibb(n-2)
    end
end   




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

disp(length(pole1));

for i=1:length(pole1)
    for j=1:length(pole1)-1
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

fprintf('Sorted arr: ');

disp(pole);

%? Alebo tak to

arr = [3, 2, 1, 5, 6, 4];
sorted_arr = selection_sort(arr);

function arr = selection_sort(arr)
    n = length(arr);

    for i = 1:(n-1)
        min_idx = i;
        for j = (i+1):n
            if arr(j) < arr(min_idx)
                min_idx = j;
            end
        end
        temp = arr(min_idx);
        arr(min_idx) = arr(i);
        arr(i) = temp;
    end
end

%? Insertsort 

%{

Insertion sort is a simple sorting algorithm that works by repeatedly
taking an element from the unsorted portion of an array and inserting it into the correct position in the sorted portion of the array.
The algorithm divides the input list into two parts: the sorted part at the left end and the unsorted part at the right end. Initially,
the sorted part is empty and the unsorted part is the entire input list.
The first element of the unsorted portion is taken and compared with each element in the sorted portion to find its correct position.
Once the correct position is found, the element is inserted into that position and the sorted portion of the array is expanded by one element.
This process is repeated for each element in the unsorted portion of the array.
%}

pole = [3, 2, 1, 5, 6, 4];
sorted_pole = insertion_sort(pole);

function arr = insertion_sort(arr)
    n = length(arr);

    for i = 2:n
        key = arr(i);
        j = i - 1;
        while j >= 1 && arr(j) > key
            arr(j+1) = arr(j);
            j = j - 1;
        end
        arr(j+1) = key;
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


%? Quicksort

%{

Quicksort is a divide and conquer algorithm.
%! It works by selecting a 'pivot'(In the quick sort algorithm,
%? the pivot element is a special element in the array that is used to partition the array into two smaller sub-arrays. )
%* element from the array and partitioning the other elements into two sub-arrays,
according to whether they are less than or greater than the pivot.
The sub-arrays are then sorted recursively. This can be done in-place, requiring small additional amounts of memory to perform the sorting.

%}

arr = [3, 2, 1, 5, 6, 4];
quick_sort(arr, 1, length(arr));

function quick_sort(arr, left, right)
    if left < right
        pivot = partition(arr, left, right);
        quick_sort(arr, left, pivot-1);
        quick_sort(arr, pivot+1, right);
    end
end

function pivot = partition(arr, left, right)
    pivot = arr(right);
    i = left - 1;
    for j = left:right-1
        if arr(j) <= pivot
            i = i + 1;
            temp = arr(i);
            arr(i) = arr(j);
            arr(j) = temp;
        end
    end
    temp = arr(i+1);
    arr(i+1) = arr(right);
    arr(right) = temp;
    pivot = i + 1;
end

%* MergeSort

%{


%* Merge sort is a divide-and-conquer sorting algorithm that works by repeatedly dividing an array into two smaller sub-arrays,
%* sorting each sub-array and then merging the sorted sub-arrays back together.



%}


arr = [3, 2, 1, 5, 6, 4];
sorted_arr = merge_sort(arr);


function arr = merge_sort(arr)
    n = length(arr);
    if n > 1
        mid = floor(n/2);
        left = arr(1:mid);
        right = arr(mid+1:n);
        left = merge_sort(left);
        right = merge_sort(right);
        arr = merge(left, right);
    end
end


function arr = merge(left, right)
    n_left = length(left);
    n_right = length(right);
    i = 1;
    j = 1;
    k = 1;
    arr = zeros(1, n_left + n_right);
    while i <= n_left && j <= n_right
        if left(i) <= right(j)
            arr(k) = left(i);
            i = i + 1;
        else
            arr(k) = right(j);
            j = j + 1;
        end
        k = k + 1;
    end
    while i <= n_left
        arr(k) = left(i);
        i = i + 1;
        k = k + 1;
    end
    while j <= n_right
        arr(k) = right(j);
        j = j + 1;
        k = k + 1;
    end
end


%* HeapSort


%{
    

Heap sort is a comparison-based sorting algorithm that works by building a binary heap data structure from the input array and then repeatedly
extracting the maximum element from the heap and placing it at the end of the sorted array.

A binary heap is a complete binary tree that satisfies the heap property,
which states that for each node in the tree, the value of that node is greater than or equal to the values of its children.
There are two types of binary heap: max-heap and min-heap.
In a max-heap, the root node has the largest value, while in a min-heap,
the root node has the smallest value. Heap sort uses a max-heap.



%}


arr = [3, 2, 1, 5, 6, 4];
sorted_arr = heap_sort(arr);


function arr = heap_sort(arr)
    n = length(arr);
    for i = floor(n/2):-1:1
        arr = heapify(arr, i, n);
    end
    for i = n:-1:2
        temp = arr(1);
        arr(1) = arr(i);
        arr(i) = temp;
        arr = heapify(arr, 1, i-1);
    end
end


function arr = heapify(arr, i, n)
    largest = i;
    left = 2*i;
    right = 2*i + 1;
    if left <= n && arr(left) > arr(largest)
        largest = left;
    end
    if right <= n && arr(right) > arr(largest)
        largest = right;
    end
    if largest ~= i
        temp = arr(i);
        arr(i) = arr(largest);
        arr(largest) = temp;
        arr = heapify(arr, largest, n);
    end
end







% Fibbonacci
function x = fibb(n)
    if (n <= 1)
        x = n; 
    else
        x = fibb(n- 1) + fibb(n-2)
    end
end   

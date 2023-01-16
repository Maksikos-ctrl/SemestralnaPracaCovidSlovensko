%{
Napíšte program, ktorý vygeneruje maticu náhodných čísel. Žiadne číslo sa v matici nesmie opakovať. Veľkosť matice je 10x10. Rozsah  generovania je od 0 po 100. Počítajte, koľko krát prebehlo generovanie
 a na záver vypíšte vygenerovanú maticu a tiež koľko krát generovanie  prebehlo v Matlabe


%}

 % velkost matice
n = 10;
% rozsah generovania
range = 100;

matica = zeroes(n);
count = 0;

% pokym sa v matici nachadzaju nulove prvky
while any(any(matica == 0)) 

    for i=1:n 
        for j=1:n
            % ak je prvy prvok v riadku nulovy
            if matica(i,1) == 0
                temp = randi([0, range]);
                
                % ak sa dane cislo v matici nenachadza
                if ~any(any(temp == matica))
                    % vygeneruj nahodne cislo znova
                    matica(i,j) = temp;
                else
                    % ak sa cislo nachadza, skus ho znova
                    i = i - 1;
                    j = j - 1;
                    count = count + 1;
                end
            end
        end
    end    
end

disp(matice);
disp(count);






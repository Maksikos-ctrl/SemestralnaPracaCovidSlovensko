% Uloha

%{
    
Create clear graphs with the possibility of selecting a quantity (e.g. input to a function)
Add the possibility of choosing a time window (e.g. 7 days, 30 days, etc.)
Option to display medians (e.g. 7d/3d)
Option to add up the number of days in the selected time interval over:
a) a certain established limit
b) median
count the worst time segment (n-days) (most confirmed, hospitalized and most deaths)
count the most positive time segment (n-days) in treatment (most confirmed, least hospitalized
and least deaths)
find the time segment (n-days) with the largest / smallest number of positive / hospitalized / dead
find Time segment (n-days) with the largest / smallest increase in positive / hospitalized / dead
General requirements
- Unique solution
- Simple console menu or GUI
- Individual functionalities as functions
- defense 13. Week - (or 12 after agreement with the training teacher)
- Submission electronically 12/16/2020 until 20:00
- On the exam, a control defense of the work is possible
- brief documentation (a sample of the visualizations and a description of the functionality)
Elaboration and defense of semester work - 15b

%}




% http request classe
import matlab.net.*
import matlab.net.http.*
import matlab.net.request.*
import matlab.net.URI.*



request = RequestMessage;
request.Body = MessageBody;


uri = URI('https://raw.githubusercontent.com/Institut-Zdravotnych-Analyz/covid19-data/main/Deaths/OpenData_Slovakia_Covid_DeathsCumulative.csv');
for i=1:70
    request.Body.Data = struct('Date', uri.date(i), 'Total', uri.total(i));
end
request.Method = 'get';


 


[response] = send(request, uri);
request = RequestMessage('GET', [ bunchOfHeaders ],  jsonencode());
% % Send request to login api
% [login_resp, c, h] = request.send("https://trading.somebroker.com/login/secure/login")
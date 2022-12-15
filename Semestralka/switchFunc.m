function val = switchFunc(head)

    table = readtable("OpenData_Slovakia_Covid_DailyStats.csv", "PreserveVariableNames", true);
    switch head
        case 1
            val = table.Pocet_potvrdenych_PCR_testami;
        case 2
            val = table.Dennych_PCR_testov;
        case 3
            val = table.Dennych_PCR_prirastkov;
        case 4
            val = table.Pocet_umrti;
        case 5
            val = table.AgTests;
        case 6
            val = table.AgPosit;
        case 7
            val = table.Pocet_hospitalizovanych;
    end
end
function val = switch_func(head)

    table = readtable("OpenData_Slovakia_Covid_DailyStats.csv");
    switch head
        case 1
            val = table.Pocet_potvrdenych_PCR_testami;
        case 2
            val = table.Dennych_PCR_tesend_datev;
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
        otherwise
            error("Invalid input");
    end
end
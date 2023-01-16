%% Import data from text file
%% Setup the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 3);
% Specify range and delimiter
opts.DataLines = [2, Inf];
opts.Delimiter = ";";
% Specify column names and types
opts.VariableNames = ["Date", "Asymptomatic_inclNULL", "Asymptomatic_exclNULL"];
opts.VariableTypes = ["string", "double", "double"];
% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
% Specify variable properties
opts = setvaropts(opts, "Date", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "Date", "EmptyFieldRule", "auto");
opts = setvaropts(opts, ["Asymptomatic_inclNULL", "Asymptomatic_exclNULL"], "TrimNonNumeric", true);
opts = setvaropts(opts, ["Asymptomatic_inclNULL", "Asymptomatic_exclNULL"], "ThousandsSeparator", ",");

% Import the data
data = readtable("OpenData_Slovakia_Covid_PositiveTests_AsymptomaticPerc.csv", opts);

%% Clear temporary variables
clear opts
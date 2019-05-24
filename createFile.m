clear;
close all;
clc

% ----- Read data here  -----

data = csvread('BTCPrice.csv');

% ----- Closing Price -------

data = data([2:end],7);


% ---- 2:end is helping to remove the name column from the data file ----

dataFinal = simplifiedData1(data);

% ----- Altering the 31st column ----

for i = 1:1948
if dataFinal(i,31)>dataFinal(i,30)
dataFinal(i,31)=1;
else
dataFinal(i,31)=0;
end
end

% --- Created a new csv file with "csvwrite('<filename.csv>,<variableName>)" hence getting newData.csv to work on for Logistic Regression ------

% --- Now the dataFinal has 31 columns with the 31st column as the prediction column ---

function finalData = alterData(data)

for i = 1:length(data)
    if data(i,31)>data(i,30)
        data(i,31)=1;
    else
        data(i,31)=0;


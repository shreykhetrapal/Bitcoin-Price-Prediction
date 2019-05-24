function dataFinal = simplifiedData1(data)
dataFinal = zeros(length(data)-31,31);
rowNumber = 1;
colNumber = 1;

for i = 1:length(data)-31
    for j = i:i+30
        dataFinal(rowNumber,colNumber) = data(j);
        colNumber = colNumber+1;
        if colNumber==32
            rowNumber = rowNumber+1;
            colNumber = 1;
        end
    end
end




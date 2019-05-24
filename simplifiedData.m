function dataFinal = simplifiedData(data)
dataFinal = zeros(63,31);
rowNumber = 1;
colNumber = 1;
for i = 1:length(data)
    dataFinal(rowNumber,colNumber) = data(i);
    colNumber = colNumber+1;
    if colNumber==32
        rowNumber = rowNumber+1;
        colNumber = 1;
    end

end



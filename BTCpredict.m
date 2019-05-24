function p = BTCpredict (theta,X)

m = size(X,1);

p = zeros(m,1);

p = BTCsigmoidFunction(X*theta)>=0.5;


end


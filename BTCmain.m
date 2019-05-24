clear;
close all;
clc

data = csvread('newData.csv');

% --- LOGISTIC REGRESSION ----


X = data(:,[1:30]);
y = data(:,31);

%============= Computing the Cost and Gradient ==============

[m,n] = size(X);

[X mu sigma] = Normalize(X);

% Adding intercept term ( that is column of 1's)
                         
X = [ones(m,1) X];
                         
theta = zeros(31,1);
                         
                         iterations = 1350;
                         alpha = 0.0003;
                         
                         
                         [theta,J_history] = gradientDescentMulti(X, y, theta, alpha, iterations);
                         
                         % Plot the convergence graph
                         figure;
                         plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
                         xlabel('Number of iterations');
                         ylabel('Cost J');
                         
                         % Display gradient descent's result
                         fprintf('Theta computed from gradient descent: \n');
                         fprintf(' %f \n', theta);
                         fprintf('\n');
                         
                         fprintf('Minimum Cost from Gradient Descent =');
                         
                         min(J_history)
                         
                         
                         
                        
                         
                         
                         
                         
                         
% Optimising using built in function fminunc
                         
options = optimset('GradObj', 'on', 'MaxIter', 10000);
                         [theta2, cost] = ...
                         fminunc(@(t)(btcCostMulti(t, X, y)),theta, options);
                         
                         theta2;
                         cost;
                         
                         
p = BTCpredict(theta,X);
                         
p2 = BTCsigmoidFunction(y)>=0.5;
                         
%printf('Accuracy of Model : %.1f%% \n',round(mean(double(p==p2))*100));

















function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

p = find(y==1);
n = find(y==0);

plot(X(p,1),X(p,2),"k+","Markersize",10);
plot(X(n,1),X(n,2),"ko","Markersize",10);







% =========================================================================



hold off;

end

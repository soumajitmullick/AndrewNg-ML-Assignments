function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%
c1 = 0;
c2 = 0;
c3 = 0;
for i = 1:m
  if idx(i) == 1
    centroids(1,:) = centroids(1,:) + X(i,:) ;
    c1 = c1 + 1;
  endif
  if idx(i) == 2
    centroids(2,:) = centroids(2,:) + X(i,:) ;
    c2 = c2 + 1;
  endif
  if idx(i) == 3
    centroids(3,:) = centroids(3,:) + X(i,:) ;
    c3 = c3 + 1;
  endif
endfor


if c1 > 0
  centroids(1,:) = centroids(1,:) ./ c1;
endif

if c2 > 0
  centroids(2,:) = centroids(2,:) ./ c2;
endif

if c3 > 0
  centroids(3,:) = centroids(3,:) ./ c3;
endif

% =============================================================


end


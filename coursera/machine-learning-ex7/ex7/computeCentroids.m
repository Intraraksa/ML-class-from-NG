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
%for i = 1:m,
%  if idx(i) == 1,
%    K1(a,:) = idx(i);
%    a = a+1;
%  elseif idx(i) == 2,
%    K2(b,:) = idx(i);
%    b = b+1;
%  else
%    K3(c,:) = idx(i);
%    c = c+1;
%  endif
%endfor

for i = 1:K,
  a = 1;
  collector = zeros(m,n);
  for j = 1:m,
    if idx(j) == i,
      collector(a,:) = X(j,:);
      a = a+1;
    endif
    centroids(i,:) =  (1/(a-1))*sum(collector); 
  endfor
endfor



% =============================================================


end


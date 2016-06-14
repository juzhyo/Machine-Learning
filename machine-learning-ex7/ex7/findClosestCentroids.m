function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
  K = size(centroids, 1);
  n = size(centroids, 2);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

m = size(X,1);                 # no. of examples
c = reshape(centroids',1,n,K); # 1 x n x K matrix
c = c(ones(1,m),:,:);          # m x n x K matrix
X = X(:,:,ones(1,K));          # m x n x K matrix
diff = sum((X-c).^2,2);        # m x 1 x K matrix
[x, idx] = min(diff,[],3);     # finding minimum across the centroids


% =============================================================

end


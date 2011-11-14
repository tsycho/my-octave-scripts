function [theta] = test-logistic(X, y)
  [X, y] = testdata();
  
  % Add x1x2, x1^2 and x2^2 parameters
  X(3:4,:) = X.^2;
  X(5,:) = X(1,:) .* X(2,:);
  
  theta = zeros(5, 1);
end
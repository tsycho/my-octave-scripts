function [X, y] = testdata()
  n = 5;
  x1 = linspace(-1, 1, n);
  x2 = linspace(-1, 1, n);
  
  X = zeros(2, length(x1)*length(x2));
  y = zeros(1, length(x1)*length(x2));
  
  for i = 1:length(x1)
    for j = 1:length(x2)
      k = (i-1) * length(x1) + j;
      X(:,k) = [x1(1,i) x2(1,j)]';
      y(1,k) = (sum( X(:,k) .^ 2 ) - 1) >= 0;
    end
  end
  
end
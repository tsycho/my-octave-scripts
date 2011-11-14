function [theta, cost, X, y] = testLogistic()
  [X, y] = testdata();
  
  % Add x1x2, x1^2 and x2^2 parameters
  X(3:4,:) = X.^2;
  X(5,:) = X(1,:) .* X(2,:);
  
  initial_theta = rand(5, 1);
  
  % Test gradients
  [J, grad] = costFunction(initial_theta, X, y);
  testgrad = numericalGradient(initial_theta, X, y);
  [grad testgrad]

  %  Set options for fminunc
  options = optimset('GradObj', 'on', 'MaxIter', 200);

  %  Run fminunc to obtain the optimal theta
  %  This function will return theta and the cost 
  [theta, cost] = fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
  
end
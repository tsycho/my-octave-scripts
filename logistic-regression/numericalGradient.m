function grad = numericalGradient(theta, X, y)
  % theta and grad should be of size nx1
  grad = zeros(size(theta));  
  epsilon = 0.0001;
  
  for i=1:length(theta)
    t = theta(i, 1);
    test_theta = theta;
    
    test_theta(i, 1) = t + epsilon;
    J_plus = costFunction(test_theta, X, y);
    
    test_theta(i, 1) = t - epsilon;
    J_minus = costFunction(test_theta, X, y);
    
    grad(i, 1) = (J_plus - J_minus)/(2*epsilon);
  end
end
function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Regularization parameter
lambda = 0;

% Initialize some useful values
m = length(y); % number of training examples
n = size(theta);
h_x = sigmoid(theta' * X); % 1 x m

% J_theta - cost function
J = (-1/m) * ( y*log(h_x)' + (1-y)*log(1-h_x)' );
J = J + (lambda/(2*m)) * (theta(2:n,1)' * theta(2:n,1)); % Regularization

% Partial derivatives for theta
diff = h_x - y; % 1 x m
grad = (1/m) * (diff * X')';
grad = grad - (lambda/m) * theta;

%fprintf('Cost: %f\n', J);

end

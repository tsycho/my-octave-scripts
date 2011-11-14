function [J, grad] = costFunction(theta, X, y, lambda)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples
n = size(theta);
h_x = sigmoid(theta' * X); % 1 x m

% J_theta - cost function
J = (-1/m) * ( y*log(h_x)' + (1-y)*log(1-h_x)' );
J = J + (lambda/(2*m)) * (theta(2:n,1)' * theta(2:n,1)); % Regularization

% Partial derivatives for theta
grad = zeros(size(theta));



end

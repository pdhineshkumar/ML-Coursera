function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration 
 
    H=X*theta; 
    J_history(iter) = computeCost(X, y, theta);
    
    E=H-y;
    
    for i =1: length(theta)
      
      theta(i)= theta(i) - ((alpha*m^-1)*E'*X)(i);
      
      
    end
    
    
    
 %   error_diffTheta1=0;
 %   error_diffTheta2=0;
 %   for i=1:m
 %     error_diffTheta1=error_diffTheta1+(H(i)-y(i))*X(i,1); 
 %     error_diffTheta2=error_diffTheta2+(H(i)-y(i))*X(i,2);      
 %   end
    
    
 %   theta(1)=theta(1)-(alpha*(1/m)*error_diffTheta1);
 %   theta(2)=theta(2)-(alpha*(1/m)*error_diffTheta2);

end

end

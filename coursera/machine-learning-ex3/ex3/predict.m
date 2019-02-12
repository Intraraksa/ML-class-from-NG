function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
%size(p)
%m
X = [ones(m, 1) X];
num_layer1 = size(Theta1,1);
for c = 1:num_layer1,
  h1(:,c) = sigmoid(X*Theta1'(:,c));
endfor
h1 = [ones(m,1) h1];
for d = 1:num_labels,
  h2(:,d) = sigmoid(h1*Theta2'(:,d));
  [x(:,1),ix(:,1)] = max(h2 ,[], 2);
endfor




% =========================================================================
p = ix;

end

function [L,D,W] = LDW(W)
% Construct the degree matrix D and the Laplacian matrix L = D − W .
%D is the defined as the sum of the row of W

W=sparse(W);
D = spdiags(sum(W,2), 0, size(W, 1), size(W, 1)); 
L = D - W;
end


function [candidates_number_matrix,candidates_matrix_3d] = candidates_matrix(original_matrix)
%candidates_matrix - produces a matrix of the number of possible candidates
%for each cell in n^2xn^2 sudoku matrix
%
%input
%   original_matrix = original n^2xn^2 matrix
%
%output
%   candidates_number_matrix = n^2xn^2 matrix with the number of possible
%   candidates in each cell

row_length = length(original_matrix(1,:));
candidates_number_matrix = zeros(row_length);
candidates_matrix_3d = zeros(row_length,row_length,row_length);

for i = 1:row_length
    for j = 1:row_length
        if original_matrix(i,j) == 0
            [isvalid,candidate_number,candidates] = candidate(original_matrix,i,j);
            candidates_number_matrix(i,j) = candidate_number;
            candidates_matrix_3d(i,j,1:length(candidates)) = candidates;
        end
    end
end
end


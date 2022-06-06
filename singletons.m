function test_matrix = singletons(test_matrix,candidates_number_matrix,candidates_matrix_3d)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

row_length = length(test_matrix(1,:));
singles_matrix = candidates_number_matrix == 1;

while sum(singles_matrix,"all") > 0
    for i = 1:row_length
        for j = 1:row_length
            if singles_matrix(i,j) == 1
                test_matrix(i,j) = candidates_matrix_3d(i,j,1);
            end
        end
    end
    [candidates_number_matrix,candidates_matrix_3d] = candidates_matrix(test_matrix);
    singles_matrix = candidates_number_matrix == 1;
end

end


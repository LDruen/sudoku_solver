function [isvalid,candidate_number,candidates] = candidate(original_matrix,row_number,column_number)
%candidate - determines if a given cell in a n^2xn^2 sudoku matrix is valid,
%   produces the number of possible candidates, and lists the possible
%   candidates
%
%input
%   original_matrix = the original n^2xn^2 matrix
%   row_number = row number
%   column_number = column number
%
%output
%   isvalid = 0 if cell number is not valid and 1 if cell number is
%   valid (0,1)
%   candidate_number = number of possible candidates (0-n^2)
%   candidates = array of possible candidates (1-n^2)

size = sqrt(length(original_matrix(1,:)));
possible_candidates = 1:size^2;

row = original_matrix(row_number,:);
column = original_matrix(:,column_number)';
block_row = ceil(row_number/size);
block_column = ceil(column_number/size);
block = original_matrix(block_row*size-(size-1):block_row*size,block_column*size-(size-1):block_column*size)';
block = block(:)';

nonzero_row = sort(nonzeros(row))';
nonzero_column = sort(nonzeros(column))';
nonzero_block = sort(nonzeros(block))';

isvalid = isequal(nonzero_row,unique(nonzero_row))...
    & isequal(nonzero_column,unique(nonzero_column))...
    & isequal(nonzero_block,unique(nonzero_block));

noncandidates = unique([nonzero_row nonzero_column nonzero_block]);
candidate_number = length(possible_candidates) - length(noncandidates);

candidates = setdiff(possible_candidates,noncandidates);

end


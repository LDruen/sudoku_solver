function [isvalid,candidate_number,candidates] = candidate(original_matrix,row_number,column_number)
%candidate - determines if a given cell in a 9x9 sudoku matrix is valid,
%   produces the number of possible candidates, and lists the possible
%   candidates
%
%input
%   original_matrix = the original 9x9 matrix
%   row_number = row number
%   column_number = column number
%
%output
%   isvalid = 0 if cell number is not valid and 1 if cell number is
%   valid (0,1)
%   candidate_number = number of possible candidates (0-9)
%   candidates = array of possible candidates (1-9)

row = original_matrix(row_number,:);
column = original_matrix(:,column_number)';

end


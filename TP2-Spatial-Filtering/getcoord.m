function out = getcoord(coordval,matrix,varargin)

% GETCOORD Get coordinates
%   getcoord(COORDVAL,MATRIX) finds the value inside a matrix containing
%   it.  Imput first the value, then the matrix, and the output will be in
%   the form of a vector [r c] with r being the row of the value and c
%   being the column.
%
%   getcoord(COORDVAL,MATRIX,RANGEROW,RANGECOL) where rangerow and rangecol
%   are increasing vector of integers less than or equal to the dimension
%   of the matrix finds the coordinates in the specified area.

if size(varargin,2) == 2    %Set optional variables
    rangeRow = varargin{1}; %Only specific rows and columns will be searched
    rangeCol = varargin{2};
elseif size(varargin,2) == 0
    rangeRow = 1:size(matrix,1);    %The entire matrix will be searched
    rangeCol = 1:size(matrix,2);
else
    disp('Incorrect number of input arguments');    %Error message for wrong number of inputs
end

out = [];
for i = rangeRow    %For the range of rows...
    for j = rangeCol    %For the range of columns...
        if matrix(i,j) == coordval  %If the value is found... 
            out = [out;i,j];        %Save it.
        end
    end
end

if size(out,1) < 1
    disp('Value not found in matrix')   %Error message if value is not in matrix
end
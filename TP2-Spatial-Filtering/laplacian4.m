function [i] = laplacian4(I)
   h = [-1  -1  -1;
        -1   8  -1;
        -1  -1  -1];
   i = uint8(conv2(I,h));
end
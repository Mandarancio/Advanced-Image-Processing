function [i] = laplacian2(I)
   h = [0  -1  0;
        -1  4  -1;
        0  -1  0;
      ];
   i = uint8(conv2(I,h));
end
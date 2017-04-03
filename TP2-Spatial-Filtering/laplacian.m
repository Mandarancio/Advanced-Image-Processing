# ∇ 2 f = (f (x + 1, y) + f (x − 1, y) + f (x, y + 1) + f (x, y − 1)) − 4f (x, y)
function [i]=laplacian(I)
  h = [0  1  0;
       1 -4  1;
       0  1  0;
      ];
   i = uint8(conv2(I,h));
endfunction
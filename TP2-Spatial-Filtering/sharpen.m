function [i] = sharpen(I, mode = 1)
   
  k = [ 0 -1  0
       -1  5 -1
        0 -1  0];
  if (mode != 1)
    k = [-1 -1 -1
         -1  9 -1
         -1 -1 -1];
  end
  i = uint8(conv2(I,k));
end
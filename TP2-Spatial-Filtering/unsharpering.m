function [i] = unsharpering(I, method = 1)
  h0 = [0 0 0;
        0 2 0;
        0 0 0];
  h1 =1/9*[1 1 1;
           1 1 1;
           1 1 1];
  if (method == 2)
    h1= 1/16 *[1 2 1;
               2 4 2;
               1 2 1];
  end
  h = h0-h1
  i = uint8(conv2(I,h));
end
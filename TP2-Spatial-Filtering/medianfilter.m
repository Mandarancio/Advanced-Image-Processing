function [i] = medianfilter(I)
  h = [0 0 1 0 0;
       0 0 1 0 0;
       1 1 0 1 1;
       0 0 1 0 0;
       0 0 1 0 0;
      ]/24;
  i = uint8(conv2(I,h));
endfunction
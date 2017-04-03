function [i] = avgfilter(I, s = 3)
  h = ones([s,s])/(s*s);
  i = uint8(conv2(I,h));
endfunction
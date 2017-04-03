function [i] = gaussfilter(I)
  h =  ones(3,3);
  h(1,2)=2;
  h(2,1)=2;
  h(3,2)=2;
  h(2,3)=2;
  h(2,2)=4;
  h = h/16;
  i = uint8(conv2(I,h));
endfunction
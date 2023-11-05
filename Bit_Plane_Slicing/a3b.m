clc;
close all;
clear all;
im = imread('cameraman.tif');
bit0 = bitget(im,1);
bit1 = bitget(im,2);
bit2 = bitget(im,3);
bit3 = bitget(im,4);
bit4 = bitget(im,5);
bit5 = bitget(im,6);
bit6 = bitget(im,7);
bit7 = bitget(im,8);
subplot(241), imshow(bit0, [])
title('Bit plane 0')
subplot(242), imshow(bit1, [])
title('Bit plane 1')
subplot(243), imshow(bit2, [])
title('Bit plane 2')
subplot(244), imshow(bit3, [])
title('Bit plane 3')
subplot(245), imshow(bit4, [])
title('Bit plane 4')
subplot(246), imshow(bit5, [])
title('Bit plane 5')
subplot(247), imshow(bit6, [])
title('Bit plane 6')
subplot(248), imshow(bit7, [])
title('Bit plane 7')
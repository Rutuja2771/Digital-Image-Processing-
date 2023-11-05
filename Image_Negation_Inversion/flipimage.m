i=imread('strawberries.jpg');
subplot(131);
imshow(i);
title("Original image")
L = 2^8

neg = (L-1)-i;
subplot(132);
imshow(neg);
title("Negative Image")

ver_flip = flip(i,1);
subplot(133);
imshow(ver_flip);
title ("Flipped Image")
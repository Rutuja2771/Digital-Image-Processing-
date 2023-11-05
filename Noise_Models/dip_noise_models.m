%Gaussian Noise 
A = imread('trees.tif');
subplot(221), imshow(A)
title('Original Image')
subplot(222), imhist(A);
title('Histogram of original Image')
B =imnoise(A,'gaussian',0,0.01);
subplot(223), imshow(B)
title('Gaussian Noisy Image')
subplot(224), imhist(B);
title('Histogram of Noisy Image')

%Salt & Pepper noise
A1 = imread('trees.tif');
figure,subplot(221), imshow(A1)
title('Original Image')
subplot(222), imhist(A1);
title('Histogram of original Image')
B1 =imnoise(A1,'salt & pepper',0.05);
subplot(223), imshow(B1)
title('Salt & Pepper Noisy Image')
subplot(224), imhist(B1);
title('Histogram of Noisy Image')

%Poisson noise
A2 = imread('trees.tif');
figure,subplot(221), imshow(A2)
title('Original Image')
subplot(222), imhist(A2);
title('Histogram of original Image')
B2 =imnoise(A2,'poisson');
subplot(223), imshow(B2)
title('Poisson Noisy Image')
subplot(224), imhist(B2);
title('Histogram of Noisy Image')
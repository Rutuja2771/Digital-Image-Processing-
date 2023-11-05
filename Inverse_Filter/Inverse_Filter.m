clc; 
clear all; 
close all;
I = im2double(imread('cameraman.tif'));
subplot(421),imshow(I);
title('Original Image');
subplot(422) ,imhist(I)

LEN = 20;
THETA = 45;
PSF = fspecial('motion', LEN, THETA);
blurred = imfilter(I, PSF, 'conv', 'circular');
subplot(423), imshow(blurred)
subplot(424),imhist(blurred)

noise_mean = 0;
noise_var = 0.001;
blurred_noisy = imnoise(blurred, 'gaussian', noise_mean, noise_var);
subplot(425), imshow(blurred_noisy)
title('Simulate Blur and Noise')
subplot(426), imhist(blurred_noisy)

estimated_nsr = noise_var / var(I(:));
wnr3 = deconvwnr(blurred_noisy, PSF, estimated_nsr);
subplot(427), imshow(wnr3)
title('Restoration of Blurred, Noisy Image Using Estimated NSR');
subplot(428), imhist(wnr3)
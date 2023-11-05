clc;
clear all;
close all;
a = imread('cameraman.tif');
b = im2gray(a);
[m,n] = size(b);
subplot(221)
imshow(b);
title('input image in gray level');
%figure;
subplot(222),imhist(b);
title('histogram of the input image at gray level');
c = zeros(m,n);
for i = 1:m
    for j = 1:n
        if b(i,j) >= 127
            c(i,j) = 200;
        else
            c(i,j) = 0;
        end
    end
end
%figure;
subplot(223)
imshow(c);
title('gray level sliced image from an intensity level');
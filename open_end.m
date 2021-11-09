close all
clear all
clc
pkg load image
%% reading image from active dir %%

img = imread('batman-returns.jpg');
subplot(2,2,1)
imshow(img)
title('Original Image')

%% converting image to graysclae %% 
graysclae = rgb2gray(img);
subplot(2,2,2)
imshow(graysclae)
title('converted Grayscale')

%% sharpening img %%

sharpen = imsharpen(graysclae, 'amount',1.2);
subplot(2,2,3)
imshow(sharpen)
title('Sharpened image')

%% smoothening img %%
smooth = imsmooth(graysclae,'Average');
subplot(2,2,4)
imshow(smooth)
title('Smoothened image')
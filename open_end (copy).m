close all
clear all
clc
pkg load image
%% reading image from active dir %%

img = imread('batman-returns.jpg');
figure
imshow(img)
title('Original Image')

%% converting image to graysclae %% 
graysclae = rgb2gray(img);
figure
imshow(graysclae)
title('converted Grayscale')

%% sharpening img %%

sharpen = imsharpen(graysclae, 'amount',2);
figure
imshow(sharpen)
title('Sharpened image')

%% smoothening img %%
smooth = imsmooth(graysclae,'Average');
figure
imshow(smooth)
title('Smoothened image')
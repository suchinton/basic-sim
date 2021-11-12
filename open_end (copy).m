close all
clear all
clc
pkg load image
%% reading image from active dir %%

img = imread('batman-returns.jpg'); %% can be .jpg or .png %%
figure
imshow(img)
title('Original Image')

%% converting image to graysclae %% 
graysclae = rgb2gray(img);
figure
imshow(graysclae)
title('Converted Grayscale')

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
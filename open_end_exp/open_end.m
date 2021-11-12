close all
clear all
clc
pkg load image

%% reading image from active dir %%
photo = uigetfile;
img = imread(photo);%% can be .jpg or .png %%

%% Dsplay Original Image %%
subplot(2,2,1)
imshow(img)
title('Original Image')

%% converting image to graysclae %% 
graysclae = rgb2gray(img);
subplot(2,2,2)
imshow(graysclae)
title('Converted Grayscale')

%% sharpening img %%

sharpen = imsharpen(graysclae, 'amount',3);
subplot(2,2,3)
imshow(sharpen)
title('Sharpened image')

%% smoothening img %%
smooth = imsmooth(graysclae,'Custom Gaussian',4,4);
subplot(2,2,4)
imshow(smooth)
title('Smoothened image')
close all
clear all
clc
pkg load image
%% reading image from active dir %%
img = imread('sample.png');
%% converting image to graysclae %% 
new = rgb2gray(img);
imshow(new)

clear all; clc; close all;


IMG = imread('low_contrast.jpg');
J = histeq(IMG);

figure(1)
imshow(J)

figure(2)
imhist(IMG);

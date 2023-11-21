clear all; clc; close all;


IMG = imread('low_contrast.jpg');
C = imadjust(IMG,stretchlim(IMG),[]);

figure(1)
imshow(C)

figure(2)
imhist(IMG);

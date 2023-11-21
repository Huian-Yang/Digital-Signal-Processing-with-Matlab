clear all; clc; close all;


IMG = imread('stained_teeth.jpg');

R = IMG(:,:,1);
G = IMG(:,:,1);
B = IMG(:,:,1);

a = zeros(size(IMG, 1), size(IMG, 2));

just_blue = cat(3, a, a, B);

new_B = (1.5 .* B);
new_image = cat(3, R, G, new_B);

figure(3)
imshow(new_image)

%-------------------------------------------------
subplot(2,1,1);
imshow(IMG)

subplot(2,1,2);
imshow(new_image)
%% Photobooth Challenge for ECE 5
% The purpose of this program is to take a photo from a webcam and do some
% signal processing with the image. We will be manipulating the pixels by
% various means such as changing the color or flipping the image.
 
% Resources - Much of the code can be found on the previous part of Lab 3
% or http://blogs.mathworks.com/steve/category/special-effects/
 
%% Clears figure windows, variables, commands, etc. 
clear all; close all; clc;
 
%% Shows what webcams are connected to the computer
webcamlist
 
%% Creates webcam as an object and tests to see that webcam is working.
cam = webcam(1); % input maybe 2 or 3 if using attached webcam
preview(cam);       
 
%% Take an image with webcam and saves as JPG
image = snapshot(cam);
imwrite(image, 'imagetesting.jpg');
imshow('imagetesting.jpg');     % displays the image

%% Closing windows
closePreview(cam);      % closes the preview window
delete(cam);            % closes the webcam

%% Altering the photos and plotting as photoreel
fileName = 'imagetesting.jpg';      % Replace with the name of your image
pic = imread(fileName);
img = imresize(pic, [480 640]);        % Resizes the image
 
% Creates different filter colors by changing the R, G, or B values
 R = img(:,:,1);
 G = img(:,:,2);
 B = img(:,:,3);
 
 z = zeros(size(img, 1), size(img, 2));
 
 cyan = cat(3, z, G, B);            
 
% Creating a black and white image
 x = rgb2gray(img);
 black_and_white = uint8(zeros(480, 640, 3));
% uint8() fixes the matrix size so it can go in photoreel
 black_and_white(:,:,1) = x;                   
% stores the black and white image into different layers
 black_and_white(:,:,2) = x;
 black_and_white(:,:,3) = x;
 
% Contrast Enhancement of the image
 SE = strel('Disk', 18);
 imgEnhanced = imadjust(img,[0.20 0.00 0.09; 0.83 1.00 0.52],...
     [0.00 0.00 1.00; 1.00 1.00 0.00], [1.10 2.70 1.00]);
 
% Decorrelation streching - useful for visulaizing image by reducing
% inter-plane autocorelation levels in an image.
 colorImg = decorrstretch(img);
 colorImg = imadjust(colorImg,[0.10; 0.79],[0.00; 1.00], 1.10);
 
 % Flipping an image
 a = fliplr(img(:,:,1));
 b = fliplr(img(:,:,2));
 c = fliplr(img(:,:,3));
 
 flippedImage = cat(3,a,b,c);
 
%% Creating the final photobooth strip.
 % list image name in desired order
 CompositeImage = [img; cyan; imgEnhanced; black_and_white;...
                   colorImg; flippedImage]; 
 imshow(CompositeImage); 

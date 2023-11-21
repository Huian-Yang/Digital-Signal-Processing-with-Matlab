
IMG = imread('buttfly.jpg');

R = IMG(:,:,1);
G = IMG(:,:,1);
B = IMG(:,:,1);

just_red = cat(3, R, a, a);

new_R = (.7 .* R);
new_image = cat(3, new_R, G, B);

figure(1)
imshow(new_image)

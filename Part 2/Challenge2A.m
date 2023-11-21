
IMG = imread('buttfly.jpg');

R = IMG(:,:,1);
G = IMG(:,:,1);
B = IMG(:,:,1);


a = zeros(size(IMG, 1), size(IMG, 2));

just_red = cat(3, R, a, a);
just_green = cat(3, a, G, a);
just_blue = cat(3, a, a, B);

figure(1)
imshow(just_red)

figure(2)
imshow(just_green)

figure(3)
imshow(just_blue)
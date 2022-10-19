% part 2.1 - histogram tranformation

% Load image , and convert it to gray -scale
x = imread('lena.bmp');
x = rgb2gray(x);
x = double(x) / 255;

% define values of L, v and h
% case 1
% L = 10;
% v = linspace(0, 1, L);
% h = ones([1, L]) / L; 
% end of case 1

% case 2
% L = 20;
% v = linspace(0, 1, L);
% h = ones([1, L]) / L; 
% end of case 2

% case 3
L = 50;
v = linspace(0, 1, L);
h =  normpdf(v, 0.5) / sum(normpdf(v, 0.5));
% end of case 2

Y = histtransform(x, h, v);


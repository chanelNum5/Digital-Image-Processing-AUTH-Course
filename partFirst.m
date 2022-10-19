% part 1

% Load image , and convert it to gray -scale
x = imread('lena.bmp');
x = rgb2gray(x);
x = double(x) / 255;

% point transformation of image X according to given values
% define values of x1,x2,y1,y2
% case a
x1 = 0.1961;
y1 = 0.0392;
x2 = 0.8039;
y2 = 0.9608;
% end of case a

% case b
% x1 = 0.5;
% y1 = 0;
% x2 = 0.5;
% y2 = 1;
% end of case b

Y =  pointtransform(x, x1, y1, x2, y2);

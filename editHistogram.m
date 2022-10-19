function editHistogram

% Load image , and convert it to gray -scale
x = imread('lena.bmp');
x = rgb2gray(x);
x = double(x) / 255;

% define f and d
% case 1
f = @(x)unifpdf(x,0,1);
% case 2
% f = @(x)unifpdf(x,0,2);
% case 3
% f = @(x)normpdf(x,0.5,0.1);

d = 0:0.02:1;

% compute h and v
h = pdf2hist(d, f);
v = zeros(1,length(h));
for i=1:1:length(h)
    v(i)=(d(i)+d(i+1))/2;
end

Y = histtransform(x, h, v);

% Uncomment next lines to see intensity values outside [0,1]
% ---------start of extra section--------------------------

% % Show the histogram of intensity values of image X and image Y
% % size of X image
% p = size(x);
% imagePixels = p(1)*p(2);
% 
% figure
% subplot(2,1,1);
% imshow(Y,[])
% title('Image Y (from 0 to 2)')
% subplot(2,1,2);
% [hN, hY] = hist(Y(:), min(d):1/255:max(d));
% hN = hN/imagePixels;
% bar(v, h, 0.5,'FaceColor',[0.3010 0.7450 0.9330])
% hold on
% bar(hY, hN )
% legend('Given histogram to approach','Histogram of image Y')
% ax = gca;
% ax.XGrid = 'off';
% ax.YGrid = 'on';
% hold off

% ----------end of extra section--------------------------

end


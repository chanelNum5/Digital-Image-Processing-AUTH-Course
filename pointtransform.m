function Y =  pointtransform(X, x1, y1, x2, y2)

% size of image X
d = size(X);

%allocate memory for image Y equal to the size of image X
Y = zeros(d(1),d(2));

% compute a1,a3 and b3 from the given values
a1 = y1/x1;
a3 = (y2-1)/(x2-1);
b3 = (x2-y2)/(x2-1);

% binarization case
if (x1==x2)
    for i=1:1:d(1)
        for j=1:1:d(2)
            % find Y value according to X value
            if (X(i,j) < x1)
                Y(i,j)=a1*X(i,j);
            else
                Y(i,j)=a3*X(i,j)+b3;
            end
        end
    end
% general case
else
    % compute a2 and b2 from given values
    a2 = (y1-y2)/(x1-x2);
    b2 = (x1*y2-x2*y1)/(x1-x2);
    for i=1:1:d(1)
        for j=1:1:d(2)
            % find Y value according to X value
            if (X(i,j) < x1)
                Y(i,j)=a1*X(i,j);
            elseif (X(i,j) < x2) && (X(i,j) >= x1)
                Y(i,j)=a2*X(i,j)+b2;
            elseif (X(i,j) <= 1) && (X(i,j) >= x2)
                Y(i,j)=a3*X(i,j)+b3;
            end
        end
    end
end

% display image X and Y
figure
subplot(2,2,1);
imshow(X)
title('Image X')
subplot(2,2,2);
imshow(Y)
title('Image Y')

% Show the histogram of intensity values of image X and image Y
[hn, hX] = hist(X(:), 0:1/255:1);
%hn = hn/imagePixels;
[hN, hY] = hist(Y(:), 0:1/255:1);
%hN = hN/imagePixels;
subplot(2,2,3);
bar(hX, hn)
title('Histogram of image X')
subplot(2,2,4);
bar(hY, hN)
subtitle = sprintf('x1 = %0.4f, y1 = %0.4f, x2 = %0.4f, y2 = %0.4f',x1,y1,x2,y2);
title({'Histogram of image Y';subtitle})

end


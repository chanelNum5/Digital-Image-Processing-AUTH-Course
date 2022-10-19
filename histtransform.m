function Y = histtransform(X, h, v) 

%size of X image
d = size(X);
imagePixels = d(1)*d(2);
% temporary store image X on image Z
Z = X;

%allocate memory for image Y equal to the size of image X
Y = zeros(d(1),d(2));
L = length(h);

% greedy algorithm
for k=1:1:L
    % variable to count pixels added to a certain space
    num=0;
    %find minimum value of X
    e = min(min(X));
    if(e==10)
        break
    end
    
    while((num/imagePixels)<h(k))
        for i=1:1:d(1)
            for j=1:1:d(2)
                if(X(i,j)==e)
                    % assign value v(k) in position (i,j) in image Y
                    Y(i,j)=v(k);
                    % assign a value greater than max(X(i,j)) in position
                    % (i,j) in image X to mark the pixel as checked
                    X(i,j)=10;
                    % increase pixel counter by 1
                    num=num+1;
                end
            end
        end
        % find the new minimum value of X
        e = min(min(X));
        if(e==10)
           break
        end
    end
end

X = Z;

% display image X and Y
figure
subplot(2,2,1);
imshow(X)
title('Image X')
subplot(2,2,2);
imshow(Y)
title('Image Y')

% Show the histogram of intensity values of image X and image Y
subplot(2,2,[3 4]);
[hN, hY] = hist(Y(:), 0:1/255:1);
hN = hN/imagePixels;
bar(v, h, 0.5,'FaceColor',[0.3010 0.7450 0.9330])
hold on
bar(hY, hN )
legend('Given histogram to approach','Histogram of image Y')
ax = gca;
ax.XGrid = 'off';
ax.YGrid = 'on';
hold off

end

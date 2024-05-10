x = imread('1.jpg');
x = imresize(x, [200, 200]);
y = double(x);
[m, n] = size(y);
L = 255;
a = round(L / 1.25);
b = round(2 * L / 2);
for i = 1:m
    for j = 1:n
        if (y(i, j) >= a) && (y(i, j) <= b)
            y(i, j) = L; 
        else
            y(i, j) = 0;  
        end
    end
end
subplot(2, 2, 1), imshow(x), title('Original Image');
subplot(2, 2, 2), imshow(y), title('Gray Level Slicing with Background ');

x = imread('3.jpg');
x = imresize(x, [200, 200]);
y = double(x);
[m, n] = size(y);
L = 255;
a = round(L / 1.25);
b = round(2 * L / 2);
for i = 1:m
    for j = 1:n
        if (y(i, j) >= a) && (y(i, j) <= b)
            y(i, j) = L;  
        else
            y(i, j) = 0;
        end
    end
end
subplot(2, 2, 3), imshow(x), title('Original Image');
subplot(2, 2, 4), imshow(y), title('Gray Level Slicing without Background');
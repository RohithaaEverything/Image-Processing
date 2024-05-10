a = imread('1.jpg'); 
b = rgb2gray(a); 
low_pass_kernel = [1 1 1; 1 1 1; 1 1 1] / 9;  
high_pass_kernel = [-1 -1 -1; -1 8 -1; -1 -1 -1]; 
low_pass_filtered = imfilter(b, low_pass_kernel); 
high_pass_filtered = imfilter(b, high_pass_kernel);  
subplot(1, 3, 1), imshow(b), title('Original Image'); 
subplot(1, 3, 2), imshow(low_pass_filtered), title('Low-pass Filtered Image'); 
subplot(1, 3, 3), imshow(high_pass_filtered), title('High-pass Filtered Image');  
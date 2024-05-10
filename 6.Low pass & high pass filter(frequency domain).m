a = imread('1.jpg'); 
b = rgb2gray(a); 
f = fft2(double(b)); 
[M, N] = size(b); 
D0 = 30; 
D1 = 50; 
u = 0:(M-1); 
idx = find(u>M/2); 
u(idx) = u(idx)- M; 
v = 0:(N-1); 
idx = find(v>N/2); 
v(idx) = v(idx)-N; 
[V, U] = meshgrid(v, u); 
D = sqrt(U.^2 + V.^2);  
low_pass_mask = double(D <= D0); 
high_pass_mask = double(D >= D1);
low_pass_filtered = real(ifft2(f .* low_pass_mask)); 
high_pass_filtered = real(ifft2(f .* high_pass_mask));  
subplot(1, 3, 1), imshow(b, []), title('Original Image'); 
subplot(1, 3, 2), imshow(low_pass_filtered, []), title('Low-pass Filtered Image'); 
subplot(1, 3, 3), imshow(high_pass_filtered, []), title('High-pass Filtered Image');  
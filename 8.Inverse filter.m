degraded_image = imread('1.jpg'); 
degraded_image = im2double(degraded_image); 
PSF = fspecial('gaussian', [5 5], 1);
restored_image = deconvwnr(degraded_image, PSF); 
subplot(1, 2, 1); imshow(degraded_image); title('Degraded Image'); 
subplot(1, 2, 2); imshow(restored_image); title('Restored Image'); 
original_image = imread('1.jpg');
if size(original_image, 3) == 3
 gray_image = rgb2gray(original_image);
else
 gray_image = original_image;
end
dct_image = dct2(double(gray_image));
compression_ratio = 0.1;
dct_image_compressed = dct_image;
num_coeffs = numel(dct_image);
num_coeffs_retained = ceil(compression_ratio * num_coeffs);
[sorted_coeffs, sorted_indices] = sort(abs(dct_image(:)), 'descend');
threshold = sorted_coeffs(num_coeffs_retained);
dct_image_compressed(abs(dct_image) < threshold) = 0;
reconstructed_image = idct2(dct_image_compressed);
subplot(1, 2, 1);imshow(gray_image);title('Original Image');
subplot(1, 2, 2);imshow(uint8(reconstructed_image));title('Reconstructed Image');
compression_ratio_actual = nnz(dct_image_compressed) / num_coeffs;
mse = sum(sum((double(gray_image) -reconstructed_image).^2)) / numel(gray_image);
psnr = 10 * log10(255^2 / mse);
fprintf('Compression Ratio (Actual): %.2f\n', compression_ratio_actual);
fprintf('MSE: %.2f\n', mse);
fprintf('PSNR: %.2f dB\n', psnr);
imwrite(uint8(reconstructed_image), 'compressed_image.jpg');
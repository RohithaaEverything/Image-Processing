a=imread('1.jpg'); 
b=rgb2gray(a) 
c=histeq(b) 
subplot(2,2,1),imshow(a),title('Original') 
subplot(2,2,2),imhist(b),title('Histogram of gray') 
subplot(2,2,3),imshow(c),title('Hist equalised') 
subplot(2,2,4),imhist(c),title('Histogram of hist equalised')   
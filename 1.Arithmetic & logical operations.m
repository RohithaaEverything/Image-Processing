r=imread('1.jpg'); 
s=imread('2.jpg'); 
a=imresize(r,[200,200]) 
c=imresize(s,[200,200]) 
subplot(3,4,1),imshow(a),title('Thala1') 
subplot(3,4,2),imshow(c),title('Thala2') 
subplot(3,4,3),imshow(a+c),title('addition') 
subplot(3,4,4),imshow(a-c),title('substraction') 
subplot(3,4,5),imshow(a.*c),title('multiplication') 
subplot(3,4,6),imshow(a./c),title('division') 
b=bitand(a,c); 
d=bitor(a,c); 
e=255-a; 
subplot(3,4,7),imshow(b),title('and') 
subplot(3,4,8),imshow(d),title('or') 
subplot(3,4,9),imshow(e),title('negative') 
f=rgb2gray(a); 
g=bitxor(f,255); 
subplot(3,4,10),imshow(g),title('xor')
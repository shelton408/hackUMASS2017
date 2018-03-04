function hybridImage(im1, im2, sigma1, sigma2)
imDbl1 = double(im1)/255;
imDbl2 = double(im2)/255;
f1 = fspecial( 'gaussian', 6*sigma1+1, sigma1);
fIm1 = filter2gray(imDbl1, f1);
f2 = fspecial( 'gaussian', 6*sigma2+1, sigma2);
fIm2 = filter2gray(imDbl2, f2);
imshow(fIm1);
pause(1);
imshow(fIm2);
pause(1);
hIm = fIm1 + fIm2;

imshow(hIm/2);
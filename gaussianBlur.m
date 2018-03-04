function blur = gaussianBlur(im, sigma1)
f1 = fspecial( 'gaussian', 6*sigma1+1, sigma1);
blur = filter2gray(im, f1);
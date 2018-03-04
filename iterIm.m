function im1 = iterIm(im,k,sigma,n)
im1 = im;
for i = 1:n
    im1 = clustersTest(clustersTest(im1,4) +  im1 - gaussianBlur(im1, sigma),4);
end

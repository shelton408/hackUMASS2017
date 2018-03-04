%change this line of code to the image you want to test this code on
dataDir = fullfile('img','test1.jpg');

im1 = rgb2gray(imread(dataDir));
figure(1); clf;

sigma = 4;
k=4;

im1 = double(im1)/255;
subplot(3,3,1); imshow(im1); axis image off; title('grayscale im');

subplot(3,3,2); imshow(clustersTest(im1,2)); axis image off; title('k=2 cluster');
subplot(3,3,3); imshow(clustersTest(im1,4)); axis image off; title('k=4 cluster');
highFreq = im1 - gaussianBlur(im1, sigma);
subplot(3,3,4); imshow(highFreq); axis image off; title('high freq details');


%clusterIm1 = clustersTest(im1,4);
imTest = iterIm(im1,k, sigma, 2);
subplot(3,3,5); imshow(imTest); axis image off;title('iters = 2');
imTest = iterIm(im1,k, sigma, 4);
subplot(3,3,6); imshow(imTest); axis image off;title('iters = 4');
imTest = iterIm(im1,k, sigma, 6);
subplot(3,3,7); imshow(imTest); axis image off;title('iters = 6');
imTest = iterIm(im1,k, sigma, 8);
subplot(3,3,8); imshow(imTest); axis image off;title('iters = 8');
imTest = iterIm(im1,k, sigma, 10);
subplot(3,3,9); imshow(imTest); axis image off;title('iters = 10');


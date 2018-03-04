function clusters = clustersTest(im1, k)
[idx,C] = kmeans(im1(:), k);
length = size(idx);
im = ones(1,length(1));
for i = 1:length;
    im(i) = C(idx(i));
end
clusters = reshape(im, size(im1));
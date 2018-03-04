function C = filter2gray(A,B)
C = ones(size(A));
size(filter2(A(:,:), B, 'same'))
C(:,:) = filter2(B, A(:,:), 'same');

# hackUMASS2017
@Author Shelton Cai

This is coded in matlab.

In order to run the program, run main.m

There are 4 sample output figures, sample1 sample2 sample3 untitled.

Project details:

This is a project done to attempt to extract details on an image beyond using a gaussian filter to extract image details. This program utilizes kmeans along with gaussian filtering. By adding high frequency details of the image onto the kmeans version of the image, we create a new image that can be clustered once again, and which we can once again extract the high frequency details of. We iterate this process multiple times. By using kmeans repeatedly, I hoped to get more distinct features, and by adding the high frequency details, we preserve those details and begin to cluster around them. Other details also get amplified and are more likely to be seen after filtering thanks to the clustering.

File details:

main.m: Reads images, creates figures, calls iterIm. CHANGE FIRST LINE OF CODE TO TEST ON IMAGE OF CHOICE.

filter2gray.m: filters a grayscale image using the given filter and image

gaussianBlur.m: uses a gaussian filter to blur an image (used for sharpening)

clustersTest.m: runs kmeans clustering on the image and converts it back to an image.

iterIm.m: iterates through the kmeans and sharpening part of the code

hybridImage.m: IRRELEVANT TO THE PROJECT! used to combing 2 grayscale images and get the average

img folder: folder of some images of mountains

data folder: folder of other random images

Sample 1, Sample 2, untitled:

figures of the code run on img/test1

sample 3:

figure of code run on img/test2


WARNING: Results vary run to run

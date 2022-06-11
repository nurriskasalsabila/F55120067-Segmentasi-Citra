clc;
clear;
close all;

%mmembaca citra
Img = imread('sunflower2.jpg');

%konversi citra rgb ke grayscale
Gray = rgb2gray(Img);

%segmentasi citra menggunakan metode thresholding
bw = im2bw(Gray,.99);
bw1 = imbinarize(Gray, 250/255);

%komplemen citra
bw2 = imcomplement(bw1);

%tampilan citra
subplot (2,2,1), imshow(Img); title("Citra Asli");
subplot (2,2,2), imshow(Gray); title("Citra konversi ke grayscale");
subplot (2,2,3), imshow(bw1); title("Citra hasil segmentasi");
subplot (2,2,4), imshow(bw2); title("Citra hasil komplemen");


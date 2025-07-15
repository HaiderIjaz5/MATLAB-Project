%MUHAMMAD HAIDER IJAZ(2022-AG-7999)_BSSE_SecA


clear; clc; close all;
% Read two images and convert to grayscale
image1 = rgb2gray(imread('input1.jpg')); % Example image
image2 = rgb2gray(imread('input2.jpg'));   % Example image
% Resize images to same size if necessary
image2 = imresize(image2, size(image1));
% Compute FFT
fft1 = fft2(double(image1));
fft2 = fft2(double(image2));
% Compute magnitude and phase
mag1 = abs(fft1);
phase1 = angle(fft1);
mag2 = abs(fft2);
phase2 = angle(fft2);
% Swap magnitude and phase
recon1 = real(ifft2(mag1 .* exp(1i * phase2)));
recon2 = real(ifft2(mag2 .* exp(1i * phase1)));
% Display all images in one figure window
figure;
% fftshift: Centers FFT spectrum by shifting zero-frequency to center
subplot(2,4,1); imshow(image1, []); title('Original Image 1');
subplot(2,4,2); imshow(image2,[]); title('Original Image 2');
subplot(2,4,3); imshow(log(1+fftshift(mag1)), []); title('Magnitude 1');
subplot(2,4,4); imshow(log(1+fftshift(mag2)), []); title('Magnitude 2');

subplot(2,4,5); imshow((fftshift(phase1)), []); title('Phase 1');
subplot(2,4,6); imshow((fftshift(phase2)), []); title('Phase 2');
subplot(2,4,7); imshow(recon1, []); title('Mag1 + Phase2');
subplot(2,4,8); imshow(recon2, []); title('Mag2 + Phase1');
set(gcf, 'Position', get(0, 'Screensize')); % Maximize figure

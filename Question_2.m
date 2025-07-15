%MUHAMMAD HAIDER IJAZ(2022-AG-7999)_BSSE_SecA

% Read the image
img = imread('circles.jpg');

% Resize (optional)
img = imresize(img, [400, NaN]);

% Convert to HSV
hsv_img = rgb2hsv(img);

% Extract the saturation channel
sat_channel = hsv_img(:,:,2);

% Apply median filter to reduce noise
sat_channel = medfilt2(sat_channel, [3 3]);

% Binarize based on saturation
bw = imbinarize(sat_channel);

% Remove small noise
bw = bwareaopen(bw, 100);

% Label connected components
[labeledImage, numCircles] = bwlabel(bw);

% Display labeled image
imshow(label2rgb(labeledImage, 'jet', 'k'));
title(['Total Circles Detected: ', num2str(numCircles)]);
disp(['Total number of circles in the image: ', num2str(numCircles)]);

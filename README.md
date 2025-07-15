# 🧠 Image Processing Projects – MATLAB

**Author:** Muhammad Haider Ijaz  
 
 This repository contains two MATLAB image processing projects:

---

## 📌 1. Frequency Domain Reconstruction using FFT

### 🔍 Description
This project demonstrates how the **magnitude** and **phase** components of the 2D Fourier Transform (FFT) influence image structure. Two images are used, and their FFT magnitude and phase components are swapped to reconstruct hybrid images.

### 📷 Input
- `input1.jpg`
- `input2.jpg`

### 🔬 Key Steps
- Convert images to grayscale
- Resize images to same dimensions
- Compute 2D FFT of both images
- Extract and swap magnitude and phase
- Reconstruct new images using `ifft2`
- Visualize results including FFT spectrum

### 📊 Output
- Original images
- Magnitude and Phase spectrum (log-scaled)
- Reconstructed Images:
  - `Mag1 + Phase2`
  - `Mag2 + Phase1`

### 🧪 MATLAB Functions Used
```matlab
fft2, ifft2, abs, angle, exp, log, fftshift, imshow
```

---

## 🎯 2. Circle Detection using Saturation in HSV

### 🔍 Description
This task involves detecting and counting **circles** in a given image (`circles.jpg`) using color-based segmentation in the **HSV color space**.

### 📷 Input
- `circles.jpg`

### 🔬 Key Steps
- Convert RGB image to HSV
- Extract the Saturation channel
- Apply median filtering to reduce noise
- Binarize the image using saturation values
- Remove small objects using `bwareaopen`
- Label and count distinct connected components (circles)

### 📊 Output
- Labeled image with uniquely colored circles
- Console display of total circles detected

### 🧪 MATLAB Functions Used
```matlab
rgb2hsv, medfilt2, imbinarize, bwareaopen, bwlabel, label2rgb, imshow
```

---

## ✅ Requirements
- MATLAB R2020 or later
- Image Processing Toolbox

---

## 📂 Folder Structure
```
📁 project/
├── circle_detection.m
├── fft_shift.m
├── input1.jpg                   % First image for FFT
├── input2.jpg                   % Second image for FFT
├── circles.jpg                  % Input for circle detection
└── README.md                    % This file
```

---

## 📢 Notes
- Make sure the input images are in the working directory.
- FFT visualization is enhanced using `log(1 + fftshift(...))` for better clarity.
- Circle detection accuracy depends on HSV thresholding and object size filtering.

---

## 🙌 Acknowledgements
Coursework from **Digital Image Processing**  
Instructor: *[Add Instructor Name if needed]*  
Institution: **University of Agriculture, Faisalabad**

---

## 📬 Contact
For queries, feel free to contact me on GitHub or email.

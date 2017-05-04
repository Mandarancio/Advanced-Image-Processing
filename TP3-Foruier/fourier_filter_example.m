%
% Small demo to demonstrate filtering in the fourier domain
% Maurits Diephuis
%
function ex3;

% Housekeeping
clear all
close all

% Read in image and pre-proces
f = im2double(imread('bird.png'));
if (size(f, 3) > 1)
	f = rgb2gray(f);
end

% Show it
figure; imshow(f, []);

% Perform FT on input image
F = fft2(f);

% Show log of magnitude spectrum
figure;imshow(fftshift(log(abs(F)+1e1)), []);
title('FT van input image');


% Calculate transfer function/ filter
rho_cut_off = 15;

[N, M] = size(f);
H = zeros(N, M);

u = -N/2 : N/2-1;
v = -M/2 : M/2-1;

[U, V] = meshgrid(u, v);
rho = (U.^2+V.^2).^0.5;

H = im2double(fftshift(rho<=rho_cut_off));

% Show filter
figure; imshow(H, []);

% Filtering in the Fourier domain
F_low = H.*F;
figure; imshow(log(abs(fftshift(F_low))+1e1), []);

% Inverse FT
f_low = ifft2(F_low);
figure; imshow(real(f_low), []);

% Show the PSF and the OTF

PSF = otf2psf(H, [32, 32]);
figure; surf(PSF); title('PSF'); 

OTF = psf2otf(PSF);
figure;surf(fftshift(OTF)); title('OTF'); 


PSF2 = real(fftshift(ifftn(H)));
figure;surf(PSF2); shading interp;

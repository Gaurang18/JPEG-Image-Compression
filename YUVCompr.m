function varargout = YUVCompr(M)
rgbImage = (M);
R = M(:,:,1);
G = M(:,:,2);
B = M(:,:,3);
Y = 0.299 * R + 0.587 * G + 0.114 * B; 
U = -0.14713 * R - 0.28886 * G + 0.436 * B; 
V = 0.615 * R - 0.51499 * G - 0.10001 * B; 
rgbImage = cat(3,Y,U,V); 
imshow(rgbImage);
redChannel = rgbImage(:, :, 1);
imwrite(redChannel,'rd.png');
greenChannel = rgbImage(:, :, 2);
imwrite(greenChannel,'gn.png');
blueChannel = rgbImage(:, :, 3);
imwrite(blueChannel,'bl.png');
% Recombine separate color channels into an RGB image.
rgbImage1 = cat(3, redChannel, greenChannel, blueChannel);
end
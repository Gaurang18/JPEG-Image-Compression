function varargout = HSVCompr(M)
rgbImage = (M);
rgbImage = rgb2hsv(rgbImage);
redChannel = rgbImage(:, :, 1);
imwrite(redChannel,'rd.png');
greenChannel = rgbImage(:, :, 2);
imwrite(greenChannel,'gn.png');
blueChannel = rgbImage(:, :, 3);
imwrite(blueChannel,'bl.png');
% Recombine separate color channels into an RGB image.
rgbImage1 = cat(3, redChannel, greenChannel, blueChannel);
end
function varargout = GrayCompr(M)
rgbImage = M;
rgbImage = rgb2gray(rgbImage);
imwrite(rgbImage,'grey.png');
end
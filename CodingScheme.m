function varargout = CodingScheme(Ma)
rgbImage =(Ma);
M = rgb2gray(rgbImage);
% X coding better
J = dct2(M);
J(300:512,:) = 0;
P1 = idct2(J);
figure(1)
imshow(P1,[])
disp('X is better way of coding')
% Y coding better
J = dct2(M);
J(:,300:512) = 0;
P2 = idct2(J);
figure(2)
disp('Y is better way of coding')
imshow(P2,[])
end
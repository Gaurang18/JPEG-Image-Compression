function varargout = MyCompress(M)
A = M;
figure(1)
imshow(A)
x = input('Enter values for compression through YCbCr , RGB , HSV , NTSC , YUV, YIQ, Gray,new_compress?\n');
switch(x)
case 1
    YCBCRCompr(A);
    RedFrame
    GreenFrame
    BlueFrame
    R1 = imread('R1.png');
    R2 = imread('R2.png');
    R3 = imread('R3.png');
    Rf = cat(3,R1,R2,R3);
    Rf = ycbcr2rgb(Rf);
    figure(2)
    imshow(Rf)
    imwrite(Rf,'MYCompressYcbcr.png');
    compression  = CompressionRatio('Lenna.png','MYCompressYcbcr.png');
    disp('compression ratio is');
    disp(compression);
case 2
    RGBCompr(A);
    RedFrame
    GreenFrame
    BlueFrame
    R1 = imread('R1.png');
    R2 = imread('R2.png');
    R3 = imread('R3.png');
    Rf = cat(3,R1,R2,R3);
    figure(2)
    imshow(Rf)
    imwrite(Rf,'MYCompressRGB.png');
    compression  = CompressionRatio('Lenna.png','MYCompressRGB.png');
    disp('compression ratio is');
    disp(compression);
case 3
    HSVCompr(A);
    RedFrame
    GreenFrame
    BlueFrame
    R1 = imread('R1.png');
    R2 = imread('R2.png');
    R3 = imread('R3.png');
    Rf = cat(3,R1,R2,R3);
    Rf = hsv2rgb(Rf);
    figure(2)
    imshow(Rf)
    imwrite(Rf,'MYCompressHSV.png');
    compression  = CompressionRatio('Lenna.png','MYCompressHSV.png');
    disp('compression ratio is');
    disp(compression);
case 4
    NTSCCompr(A);
    RedFrame
    GreenFrame
    BlueFrame
    R1 = imread('R1.png');
    R2 = imread('R2.png');
    R3 = imread('R3.png');
    Rf = cat(3,R1,R2,R3);
    Rf = ntsc2rgb(Rf);
    figure(2)
    imshow(Rf)
    imwrite(Rf,'MYCompressNTSC.png');
    compression  = CompressionRatio('Lenna.png','MYCompressNTSC.png');
    disp('compression ratio is');
    disp(compression);
case 5
    YUVCompr(A);
    RedFrame
    GreenFrame
    BlueFrame
    R1 = imread('R1.png');
    R2 = imread('R2.png');
    R3 = imread('R3.png');
    R = -0.1179838438e-4 * R2 + R1 + 1.139834576 * R3;
    G = -.5805942338 * R3 -.3946460533 * R2 + 1.000003946 * R1;
    B = .9999796789 * R1 + 2.032111938 * R2 -0.1511298066e-4 * R3;
    Rf = cat(3,R,G,B);
    figure(2)
    imshow(Rf)
    imwrite(Rf,'MYCompressYUV.png');
    compression  = CompressionRatio('Lenna.png','MYCompressYUV.png');
    disp('compression ratio is');
    disp(compression);
case 6
    YIQCompr(A);
    RedFrame
    GreenFrame
    BlueFrame
    R1 = imread('R1.png');
    R2 = imread('R2.png');
    R3 = imread('R3.png');
    Rf = cat(3,R1,R2,R3);
    Rf = ntsc2rgb(Rf);
    figure(2)
    imshow(Rf)
    imwrite(Rf,'MYCompressYIQ.png');
    compression  = CompressionRatio('Lenna.png','MYCompressYIQ.png');
    disp('compression ratio is');
    disp(compression);
case 7
    GrayCompr(A);
    GrayFrame
    Rf = imread('R4.png');
    figure(2)
    imshow(Rf)
    compression  = CompressionRatio('Lenna.png','R4.png');
    disp('compression ratio is');
    disp(compression);
end
%y=input('Enter values for colormap you want from winter,summer,spring,autumn,copper?\n');
%colormap1(imread(A));
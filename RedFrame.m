clc;
clear all;
A = imread('rd.png');
[row, coln]= size(A);
width=coln;
height=row;

W = ceil(width/8);
H = ceil(height/8);

I = zeros(H*8,W*8,'uint8');
I (1:height,1:width)=A(1:height,1:width);
I = double(I);
I1=I;

row = height;
coln = width;

I = I-128;
Qfact = input('What Frame Image Compression do you require?');
%Qfact = 50;
Q50 = [ 16 11 10 16 24 40 51 61;
     12 12 14 19 26 58 60 55;
     14 13 16 24 40 57 69 56;
     14 17 22 29 51 87 80 62; 
     18 22 37 56 68 109 103 77;
     24 35 55 64 81 104 113 92;
     49 64 78 87 103 121 120 101;
     72 92 95 98 112 100 103 99];
 
 if Qfact > 50
     QX = round(Q50.*(ones(8)*((100-Qfact)/50)));
     QX = uint8(QX);
 elseif Qfact < 50
     QX = round(Q50.*(ones(8)*(50/Qfact)));
     QX = uint8(QX);
 elseif Qfact == 50
     QX = Q50;
 end
 
 
DCTmat = dct(eye(8));
iDCTmat = DCTmat'; 
dct_restored = zeros(row,coln);
QX = double(QX);

%----------------------------------------------------------
% Jpeg Encoding
%----------------------------------------------------------
%----------------------------------------------------------
% Forward Discret Cosine Transform
%----------------------------------------------------------

for i1=[1:8:row]
    for i2=[1:8:coln]
        BLOCK=I(i1:i1+7,i2:i2+7);
        win1=DCTmat*BLOCK*iDCTmat;
        dct_domain(i1:i1+7,i2:i2+7)=win1;
    end
end
%-----------------------------------------------------------
% Quantization of the DCT coefficients
%-----------------------------------------------------------
for i1=[1:8:row]
    for i2=[1:8:coln]
        win1 = dct_domain(i1:i1+7,i2:i2+7);
        win2=round(win1./QX);
        dct_quantized(i1:i1+7,i2:i2+7)=win2;
    end
end

%-----------------------------------------------------------
% Jpeg Decoding 
%-----------------------------------------------------------
% Dequantization of DCT Coefficients
%-----------------------------------------------------------
for i1=[1:8:row]
    for i2=[1:8:coln]
        win2 = dct_quantized(i1:i1+7,i2:i2+7);
        win3 = win2.*QX;
        dct_dequantized(i1:i1+7,i2:i2+7) = win3;
    end
end
%-----------------------------------------------------------
% Inverse DISCRETE COSINE TRANSFORM
%-----------------------------------------------------------
for i1=[1:8:row]
    for i2=[1:8:coln]
        win3 = dct_dequantized(i1:i1+7,i2:i2+7);
        win4=iDCTmat*win3*DCTmat;
        dct_restored(i1:i1+7,i2:i2+7)=win4;
    end
end
I2=dct_restored;
K=mat2gray(I2);
imwrite(K,'R1.png');
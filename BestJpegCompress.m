I  = imread('Lenna.png');
figure(1)
imshow(I)
load mask;
[cr,bpp] = wcompress('c','Lenna.png','mask.wtc','aswdr','cc','klt','maxloop',11,'plotpar','step')
Xc = wcompress('u','mask.wtc');
[cr,bpp1] = wcompress('c',Xc,'maskt.wtc','spiht','maxloop',12);
Xct = wcompress('u','maskt.wtc');
delete('maskt.wtc')
delete('mask.wtc')
figure(2)
imshow(Xct)
imwrite(Xct,'BestJPGComp.png');
compression = CompressionRatio('Lenna.png','BestJPGComp.png')

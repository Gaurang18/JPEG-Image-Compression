function colormap1(x,im)
    im = rgb2gray(im);
    switch x
        case 1
            figure(1);
            imshow(im);
            colormap(winter(50));
            saveas(gcf,'map_50.png')
            
            figure(2);
            imshow(im);
            colormap(winter(100));
            saveas(gcf,'map_100.png')
            
            figure(3);
            imshow(im);
            colormap(winter(150));
            saveas(gcf,'map_150.png')
            
            figure(4);
            subplot(2,3,1);
            title('winter_50');
            rgbplot(winter(50))
            ax1 = subplot(2,3,4);
            surf(peaks)
            colormap(ax1,winter(50));
            
            subplot(2,3,2);
            title('winter_100');
            rgbplot(winter(100))
            ax2 = subplot(2,3,5);
            surf(peaks)
            colormap(ax2,winter(100));
            
            subplot(2,3,3);
            title('winter_150');
            rgbplot(winter(150))
            ax3 = subplot(2,3,6);
            surf(peaks)
            colormap(ax3,winter(150));
        case 2
            figure(1);
            imshow(im);
            colormap(summer(50));
            saveas(gcf,'map_50.png')
            
            figure(2);
            imshow(im);
            colormap(summer(100));
            saveas(gcf,'map_100.png')
            
            figure(3);
            imshow(im);
            colormap(summer(150));
            saveas(gcf,'map_150.png')
            
            figure(4);
            subplot(2,3,1);
            title('summer_50');
            rgbplot(summer(50))
            ax1 = subplot(2,3,4);
            surf(peaks)
            colormap(ax1,summer(50));
            
            subplot(2,3,2);
            title('summer_100');
            rgbplot(summer(100))
            ax2 = subplot(2,3,5);
            surf(peaks)
            colormap(ax2,summer(100));
            
            subplot(2,3,3);
            title('summer_150');
            rgbplot(summer(150))
            ax3 = subplot(2,3,6);
            surf(peaks)
            colormap(ax3,summer(150));
        case 3
            figure(1);
            imshow(im);
            colormap(spring(50));
            saveas(gcf,'map_50.png')
            
            figure(2);
            imshow(im);
            colormap(spring(100));
            saveas(gcf,'map_100.png')
            
            figure(3);
            imshow(im);
            colormap(spring(150));
            saveas(gcf,'map_150.png')
            
            figure(4);
            subplot(2,3,1);
            title('spring_50');
            rgbplot(spring(50))
            ax1 = subplot(2,3,4);
            surf(peaks)
            colormap(ax1,spring(50));
            
            subplot(2,3,2);
            title('spring_100');
            rgbplot(spring(100))
            ax2 = subplot(2,3,5);
            surf(peaks)
            colormap(ax2,spring(100));
            
            subplot(2,3,3);
            title('spring_150');
            rgbplot(spring(150))
            ax3 = subplot(2,3,6);
            surf(peaks)
            colormap(ax3,spring(150));
        case 4
            figure(1);
            imshow(im);
            colormap(autumn(50));
            saveas(gcf,'map_50.png')
            
            figure(2);
            imshow(im);
            colormap(autumn(100));
            saveas(gcf,'map_100.png')
            
            figure(3);
            imshow(im);
            colormap(autumn(150));
            saveas(gcf,'map_150.png')
            
            figure(4);
            subplot(2,3,1);
            title('autumn_50');
            rgbplot(autumn(50))
            ax1 = subplot(2,3,4);
            surf(peaks)
            colormap(ax1,autumn(50));
            
            subplot(2,3,2);
            title('autumn_100');
            rgbplot(autumn(100))
            ax2 = subplot(2,3,5);
            surf(peaks)
            colormap(ax2,autumn(100));
            
            subplot(2,3,3);
            title('autumn_150');
            rgbplot(autumn(150))
            ax3 = subplot(2,3,6);
            surf(peaks)
            colormap(ax3,autumn(150));
        case 5
            figure(1);
            imshow(im);
            colormap(copper(50));
            saveas(gcf,'map_50.png')
            
            figure(2);
            imshow(im);
            colormap(copper(100));
            saveas(gcf,'map_100.png')
            
            figure(3);
            imshow(im);
            colormap(copper(150));
            saveas(gcf,'map_150.png')
            
            figure(4);
            subplot(2,3,1);
            title('copper_50');
            rgbplot(copper(50))
            ax1 = subplot(2,3,4);
            surf(peaks)
            colormap(ax1,copper(50));
            
            subplot(2,3,2);
            title('copper_100');
            rgbplot(copper(100))
            ax2 = subplot(2,3,5);
            surf(peaks)
            colormap(ax2,copper(100));
            
            subplot(2,3,3);
            title('copper_150');
            rgbplot(copper(150))
            ax3 = subplot(2,3,6);
            surf(peaks)
            colormap(ax3,copper(150));
    end
x=CompressionRatio('map_50.png','map_100.png');
y=CompressionRatio('map_50.png','map_150.png');
z=CompressionRatio('map_100.png','map_150.png');
disp('compression ratio for qfactor=50 to qfactor=100 is :');
disp(1/x);
disp('compression ratio for qfactor=50 to qfactor=150 is :');
disp(1/y);
disp('compression ratio for qfactor=100 to qfactor=150 is :');
disp(1/z);
            
end

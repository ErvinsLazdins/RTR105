%% Merijumu datu apstrade 1.laboratorijas darbs
%% Darba merki
% Iemacities apstradat merijumu datus
% 
% Iemacities veidot atskaites ar matlab report generator
%
% Iemacities izmantot polyfit, polyval un citas funkcijas grafiku zimesana
%% Dotais grafiks
% http://www.farnell.com/datasheets/2047854.pdf?_ga=2.28300345.469827753.1581723424-1639765143.1581723424&_gac=1.128082302.1581723424.CjwKCAiAp5nyBRABEiwApTwjXjyobXYhqOwEiidK-5u6Iq4GH4fIAJ1rHTbEIXCul3kjUx58gisfLhoCcH8QAvD_BwE
%
%  FIG.6 FAR FIELD PATTERN 
%% Darba programma
A = imread('grafiks_nogriezts.png');
figure(1),image([-90,90],[1,0],A);
set(gca,'Ydir','normal')
title('Originalais grafiks no farnell');
[x,y] = ginput(12);
x1 = -90:0.01:90;
C = polyfit(x,y,4);
y1 = polyval(C,x1);
figure(2),plot(x,y,'o',x1,y1);
ylim([0 1]);
grid on;
title('Relative Luminous Intensity');
xlabel('Angle, degrees');
ylabel('Relative Intensity');
figure(2),legend('atliktie punkti','pielaikotais polinoms');

%% Secinajumi
% Darba merki ir izpilditi, iemacijos apstradat datus un lietot pamata funkcijas grafiku
% zimesana, piemeram, plot, ginput, imread, figure utt.. Problemas sagadaja
% grafika zimesana ar pielaikoto polinomu, jo nez kapec reizem
% tika uzplotots grafiks, bet y ass sakas no -0.2, nevis no 0 ka tas noteikts, kaut gan grafika likne zem 0 negaja.  Tas tika salabots ar ylim funkciju, kas ierobezoja y
% vajadzigajas robezas no 0 lidz 1. Rezultata pielaikota polinoma grafiks sakrita ar
% originalo likni no datasheeta.
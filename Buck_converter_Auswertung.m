%Buck_converter_Auswertung.m
%Yan Zhao, 23.05.2025
clear;

% Define
Noise=50;    %[mARMS]
VREF=1.65;   %[V]
Sens1=20.3e-3;  %[V/A]
Sens2=33e-3;    %[V/A]

data1=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\ASC030_1.3A.csv","NumHeaderLines",5);
data2=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\ASC030_1.5A.csv","NumHeaderLines",5);
data3=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\ASC030_2A (2).csv","NumHeaderLines",5);
data4=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\ASC030_2.5A.csv","NumHeaderLines",5);
data5=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\ASC030_3A.csv","NumHeaderLines",5);
data6=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\C1--032-1.3A--00000.csv","NumHeaderLines",5);
data7=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\C1--032-1.5A--00000.csv","NumHeaderLines",5);
data8=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\C1--032-2A--00000.csv","NumHeaderLines",5);
data9=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\C1--032-2.5A--00000.csv","NumHeaderLines",5);
data10=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\C1--032-3A--00000.csv","NumHeaderLines",5);
data11=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\C1--buck-032-75kohm-00000--00001.csv","NumHeaderLines",5);
data12=readmatrix("C:\Users\Public\Documents\Altium\Projects\Buck-converter\cvs Auswertung\C1--buck-032-150kohmkohm-0000--00000.csv","NumHeaderLines",5);

% x_achse
time1=data1(:,1);
time2=data6(:,1);

time3=data2(:,1);
time4=data7(:,1);

time5=data3(:,1);
time6=data8(:,1);

time7=data4(:,1);
time8=data9(:,1);

time9=data5(:,1);
time10=data10(:,1);

time11=data11(:,1);
time12=data12(:,1);

% real current [A]
I1=(data1(:,2)-VREF)/Sens1;
I2=(data6(:,2)-VREF)/Sens2;

I3=(data2(:,2)-VREF)/Sens1;
I4=(data7(:,2)-VREF)/Sens2;

I5=(data3(:,2)-VREF)/Sens1;
I6=(data8(:,2)-VREF)/Sens2;

I7=(data4(:,2)-VREF)/Sens1;
I8=(data9(:,2)-VREF)/Sens2;

I9=(data5(:,2)-VREF)/Sens1;
I10=(data10(:,2)-VREF)/Sens2;

I11=(data11(:,2)-VREF)/Sens2;
I12=(data12(:,2)-VREF)/Sens2;

% Auflösung
Aufloesung1=Noise/Sens1;
Aufloesung2=Noise/Sens2;
disp(['ACS37030 Aufloesung:' num2str(Aufloesung1)]);
disp(['ACS37032 Aufloesung:' num2str(Aufloesung2)]);

% I average
I1_avg=mean(I1);
I2_avg=mean(I2);
I3_avg=mean(I3);
I4_avg=mean(I4);
I5_avg=mean(I5);
I6_avg=mean(I6);
I7_avg=mean(I7);
I8_avg=mean(I8);
disp(['I1 average is:',num2str(I1_avg),'A';'I2 average is:',num2str(I2_avg),'A'; ...
    'I3 average is:',num2str(I3_avg),'A';'I4 average is:',num2str(I4_avg),'A'; ...
    'I5 average is:',num2str(I5_avg),'A';'I6 average is:',num2str(I6_avg),'A';...
    'I7 average is:',num2str(I7_avg),'A';'I8 average is:',num2str(I8_avg),'A';...
    ]);

%Darstellung
figure
subplot(5,1,1);
plot(time1,I1,time2,I2);
title('1.3A');

subplot(5,1,2);
plot(time3,I3,time4, I4);
title('1.5A');

subplot(5,1,3);
plot(time5,I5,time6, I6);
title('2A');

subplot(5,1,4);
plot(time7,I7,time8, I8);
title('2.5A');

subplot(5,1,5);
plot(time9,I9,time10, I10);
title('3A');

xlabel('Time');ylabel('Strom');

% Verhältnis zw Ripplestrom und Ron
figure
plot(time11,I11,'r',time2,I2,'g',time12,I12+50,'b');
title('ACS37032 1.3A Ripplestromvergleich');
xlabel('time/s');
ylabel('current/A');
legend('Ron=75kohm','Ron=100kohm','Ron=150kohm');






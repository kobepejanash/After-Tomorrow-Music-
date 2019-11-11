%%Matlab版《林峯泳儿 - 明天以后》
fs = 44100; 
dt = 1/fs;
T16 = 0.125;
t16 = [0:dt:T16];
[temp k] = size(t16);
t4 = linspace(0,4*T16,4*k);
t8 = linspace(0,2*T16,2*k);
[temp i] = size(t4);
[temp j] = size(t8);
% Modification functions
mod4 = sin(pi*t4/t4(end));
mod8 = sin(pi*t8/t8(end));
mod16 = sin(pi*t16/t16(end));
f0 = 2*146.8; % reference frequency
ScaleTable = [2/3 3/4 5/6 15/16 ...
              1 9/8 5/4 4/3 3/2 5/3 9/5 15/8 ...
              2 9/4 5/2 8/3 3 10/3 15/4 4 ...
              1/2 9/16 5/8];
% 1/4 notes
do0f = mod4.*cos(2*pi*ScaleTable(21)*f0*t4);
re0f = mod4.*cos(2*pi*ScaleTable(22)*f0*t4);
mi0f = mod4.*cos(2*pi*ScaleTable(23)*f0*t4);
fa0f = mod4.*cos(2*pi*ScaleTable(1)*f0*t4);
so0f = mod4.*cos(2*pi*ScaleTable(2)*f0*t4);
la0f = mod4.*cos(2*pi*ScaleTable(3)*f0*t4);
ti0f = mod4.*cos(2*pi*ScaleTable(4)*f0*t4);
do1f = mod4.*cos(2*pi*ScaleTable(5)*f0*t4);
re1f = mod4.*cos(2*pi*ScaleTable(6)*f0*t4);
mi1f = mod4.*cos(2*pi*ScaleTable(7)*f0*t4);
fa1f = mod4.*cos(2*pi*ScaleTable(8)*f0*t4);
so1f = mod4.*cos(2*pi*ScaleTable(9)*f0*t4);
la1f = mod4.*cos(2*pi*ScaleTable(10)*f0*t4);
tb1f = mod4.*cos(2*pi*ScaleTable(11)*f0*t4);
ti1f = mod4.*cos(2*pi*ScaleTable(12)*f0*t4);
do2f = mod4.*cos(2*pi*ScaleTable(13)*f0*t4);
re2f = mod4.*cos(2*pi*ScaleTable(14)*f0*t4);
mi2f = mod4.*cos(2*pi*ScaleTable(15)*f0*t4);
fa2f = mod4.*cos(2*pi*ScaleTable(16)*f0*t4);
so2f = mod4.*cos(2*pi*ScaleTable(17)*f0*t4);
la2f = mod4.*cos(2*pi*ScaleTable(18)*f0*t4);
ti2f = mod4.*cos(2*pi*ScaleTable(19)*f0*t4);
do3f = mod4.*cos(2*pi*ScaleTable(20)*f0*t4);
blkf = zeros(1,i);
% 1/8 notes
fa0e = mod8.*cos(2*pi*ScaleTable(1)*f0*t8);
so0e = mod8.*cos(2*pi*ScaleTable(2)*f0*t8);
la0e = mod8.*cos(2*pi*ScaleTable(3)*f0*t8);
ti0e = mod8.*cos(2*pi*ScaleTable(4)*f0*t8);
do1e = mod8.*cos(2*pi*ScaleTable(5)*f0*t8);
re1e = mod8.*cos(2*pi*ScaleTable(6)*f0*t8);
mi1e = mod8.*cos(2*pi*ScaleTable(7)*f0*t8);
fa1e = mod8.*cos(2*pi*ScaleTable(8)*f0*t8);
so1e = mod8.*cos(2*pi*ScaleTable(9)*f0*t8);
la1e = mod8.*cos(2*pi*ScaleTable(10)*f0*t8);
tb1e = mod8.*cos(2*pi*ScaleTable(11)*f0*t8);
ti1e = mod8.*cos(2*pi*ScaleTable(12)*f0*t8);
do2e = mod8.*cos(2*pi*ScaleTable(13)*f0*t8);
re2e = mod8.*cos(2*pi*ScaleTable(14)*f0*t8);
mi2e = mod8.*cos(2*pi*ScaleTable(15)*f0*t8);
fa2e = mod8.*cos(2*pi*ScaleTable(16)*f0*t8);
so2e = mod8.*cos(2*pi*ScaleTable(17)*f0*t8);
la2e = mod8.*cos(2*pi*ScaleTable(18)*f0*t8);
ti2e = mod8.*cos(2*pi*ScaleTable(19)*f0*t8);
do3e = mod8.*cos(2*pi*ScaleTable(20)*f0*t8);
blke = zeros(1,j);
% 1/16 notes
fa0s = mod16.*cos(2*pi*ScaleTable(1)*f0*t16);
so0s = mod16.*cos(2*pi*ScaleTable(2)*f0*t16);
la0s = mod16.*cos(2*pi*ScaleTable(3)*f0*t16);
ti0s = mod16.*cos(2*pi*ScaleTable(4)*f0*t16);
do1s = mod16.*cos(2*pi*ScaleTable(5)*f0*t16);
re1s = mod16.*cos(2*pi*ScaleTable(6)*f0*t16);
mi1s = mod16.*cos(2*pi*ScaleTable(7)*f0*t16);
fa1s = mod16.*cos(2*pi*ScaleTable(8)*f0*t16);
so1s = mod16.*cos(2*pi*ScaleTable(9)*f0*t16);
la1s = mod16.*cos(2*pi*ScaleTable(10)*f0*t16);
tb1s = mod16.*cos(2*pi*ScaleTable(11)*f0*t16);
ti1s = mod16.*cos(2*pi*ScaleTable(12)*f0*t16);
do2s = mod16.*cos(2*pi*ScaleTable(13)*f0*t16);
re2s = mod16.*cos(2*pi*ScaleTable(14)*f0*t16);
mi2s = mod16.*cos(2*pi*ScaleTable(15)*f0*t16);
fa2s = mod16.*cos(2*pi*ScaleTable(16)*f0*t16);
so2s = mod16.*cos(2*pi*ScaleTable(17)*f0*t16);
la2s = mod16.*cos(2*pi*ScaleTable(18)*f0*t16);
ti2s = mod16.*cos(2*pi*ScaleTable(19)*f0*t16);
do3s = mod16.*cos(2*pi*ScaleTable(20)*f0*t16);
blks = zeros(1,k);
% Blank Block

%% melody
Y=[blks,so0s,so0s,so0s,so0s,so1s,so1s,so1s,so1s,fa1s,mi1s,fa1s,fa1e,blks,re1s,re1s,re1s,re1s,so0s,so0s,fa1s,mi1e,fa1s,mi1s,mi1s,re1e,do1s,blke,do1s,ti0s,ti0s,do1e,so1s,blke,do1s,ti0s,ti0s,do1e,la0s,la0e,blks,ti0s,do1s,re1s,re1f];
L=[blks,so1s,so1s,so1s,so1s,ti1s,do2s,so1s,so1s,so1s,so1s,re2s,re2s,mi2s,re2s,do2s,blke,mi1s,mi1s,mi1s,do2e,do2s,ti1e,do2s,ti1s,ti1s,so2e,la1s,la1e,blks,la1s,ti1s,do2s,do2e,so1s,fa1s,fa1s,mi1s,mi1e,fa1e,so1s,la1s,la1s,ti1s,do2s,la1s,la1s,so1e,so1s];
f1=[blks,mi1s,re1s,do1s,do1s,mi1s,re1s,do1s,blkf,blkf,blks,do1s,ti0s,la0s,blks,do2s,ti1s,do2s,re2s,do2e,ti1s,la1f,la1f,blks,so1s,so1s,so1s,so1s,do1e,so1s,so1e,do2s,ti1s,ti1s,do2s,do2e,blks,la1s,la1s,la1s,la1s,ti1s,do2s,do2s,do2s,ti1e,do2s,do2s,ti1e,so1s];
m1=[blks,mi2s,re2s,do2s,do2s,mi2s,re2s,do2s,blks,do2s,ti1s,do2s,re2s,do2s,ti2s,do2s,do2f,la0e,ti0s,do1s,do1s,ti1e,la1s,la1f,la1f,blks,so1s,so1s,so1s,so1s,do1e,mi1s,mi1e,la1s,so1s,so1s,la1s,la1e,blks,fa1s,fa1s,fa1s,fa1s,so1s,la1s,la1s,la1s,so1e,la1s,la1s,so1e,mi1s];
m=[blkf,blkf,blkf,blks,so1s,mi1s,re1s,mi1e,mi1s,re1s,do1s,do2s,do2s,do2s,ti1s,do2s,ti1s,so1s,so1s,do1e,la1s,blke,la1s,la1s,la1s,mi2e,re2s,re2s,mi2s,re2s,so1s,so1f...
    blke,la1e,la1s,do2e,mi2s,mi2s,re2s,do2s,re2s,re2s,do2s,ti1s,so1s,blke,mi1s,re1s,mi1e,re1s,do1s,re1s,so1s,so1s,so1s,so1s,la1s,ti1s,ti1s,ti1s,do2s,do2e,blke,do2s,ti1s,la1e,ti1s,do2s,mi2s,re2e,do2s,...
   la1f,blks,la1s,ti1s,do2s,do2e,mi1s,re1s,do1s,do2e,fa1s,fa1f,blks,blke,so1s,so1e,fa1s,do2s,do2e,ti2e,do2f,do2f,blkf ];
f=[blke,mi1s,re1s,mi1e,re1s,do1s,re1s,so1s,so1s,so1s,so1f,blkf,blkf,ti1s,do2s,ti1s,so1s,so1s,do1e,la1s,la1f,blkf,blkf,blks,so1s,fa1s,mi1s...
    fa1s,mi1s,fa1s,la1s,la1s,do2e,do2s,do2s,ti1s,la1s,ti1s,ti1s,do2s,ti1s,so1s,blke,mi1s,re1s,mi1e,re1s,do1s,re1s,so1s,so1s,so1s,so1s,la1s,ti1s,ti1s,ti1s,do2s,do2e,blkf,blkf,blkf,...
    blks,la1s,ti1s,do2s,re2e,do2s,so1s,so1e,mi1s,re1s,re1s,do1e,fa1s,fa1f,blks,blke,so1s,so1e,fa1s,mi1s,mi1e,re1e,mi1f,mi1f,blkf];

%% Get together
s=[Y,L,m1+f1,f+m];
s = s/max(s);
sound(s,fs/sqrt(4));


audiowrite('林峯泳儿 - 明天以后(选作）.flac',s,fs/2)

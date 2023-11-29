clear all;
clc;
close all;
format long
rp=input("Enter the pass band ripple:");
rs=input("Enter the stop band ripple:");
wp=input("Enter the pass band frequency:");
ws=input("Enter the stop band frequency:");
fs=input("Enter the sampling frequency:");
w1=2*wp/fs;
w2=2*ws/fs;

%LOW PASS FILTER

[n,wn]=buttord(wt,w2,rp,rs);
[b,a]=butter(n,wn);

w=0:0.01:pi;
[h,om]=freqz(b,a,w);
m=20*log10(abs(h));
an=angle(h);
subplot(2,1,1);
plot(om/pi,m);
ylabel("Gain in db...>");
xlabel("(a)Normalized Frequency...>");
subplot(2,1,2);
Plot(om/pi,an);
ylabel("Phase in radian...>");
xlabel("(b)Normalized Frequency...>");

%High PASS FILTER

[n,wn]=buttord(wt,w2,rp,rs);
[b,a]=freqz(b,a,w);
m=20*log10(abs(h));
an=angle(h);
subplot(2,1,1);
plot(om/pi,m);
ylabel("Gain in db...>");
xlabel("(a)Normalized Frequency...>");
subplot(2,1,2);
Plot(om/pi,an);
ylabel("Phase in radian...>");
xlabel("(b)Normalized Frequency...>");

%Band PASS FILTER

[n,wn]=buttord(wt,w2,rp,rs);
lb,al=butter(n,wn,'band pass');
[h,om]=freqz(b,a,w);
m=20*log10(abs(h));
an-angle(h);
subplot(2, 1, 1);
plot(om/pi,m);
ylabel("Gain in db...>");
xlabel("(a)Normalized Frequency...>");
subplot(2,1,2);
Plot(om/pi,an);
ylabel("Phase in radian...>");
xlabel("(b)Normalized Frequency...>");

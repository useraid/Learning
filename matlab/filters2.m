%FIR Low Pass
clc;
close all;
rp = input("enter the passband ripple:");
rs = input("enter the stopband ripple:");
wp = input("enter the passband frequency:");
ws = input("enter the stopband frequency:");
fs = input("enter the samplingfrequency:");
beta = input("enter the beta value:");
w1 = 2 * wp / fs;
w2 = 2 * ws / fs;
num = -20 * log10(sqrt(rp * rs)) - 13;
dem = 14.6 * (ws - wp) / fs;
n = ceil(num / dem);
n1 = n + 1;
if (rem(n, 2) ~= 0) 
    n1 = n;
    n = n - 1;
end 
c=input("Enter your choice of window function 1.Rectangular 2. Hamming 3.Kaiser: \n");
if(c == 1) 
    y = rectwin(n1);
    disp("Rectangular window filter response");
end 
if(c == 2) 
    y = hamming(n1);
    disp("Hamming window filter response");
end
if(c == 3) 
    y = kaiser(n1, beta); disp("Kaiser window filter response"'); 
end 

ch=input("Given type of filter response 1:LPF 2. HPF");
switch ch 
    case 1 
        b=fir1(n,w1,y); 
        [h,o]=freqz(b, 1,256); 
        m=20*log10(abs(h)); 
        plot(o/pi,m); 
        title("LPF"); 
        xlable("(a) Normalized frequency-->"); 
        ylable("Gain in dB-->"); 
    case 2 
        b=fir1 (n,w1,'high',y); 
        [h,o]=freqz(b, 1,256);
        m=20*log10(abs(h)); 
        plot(o/pi,m); 
        title("HPF"); 
        xlable("(b) Normalized frequency-->"); 
        ylable("Gain in dB-->"'); 
end
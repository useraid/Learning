warning off;
disp('enter the iir filter design specifications');
rp = input('enter the pass band ripple');
rs = input('enter the stopband ripple');
wp = input('enter the passband freq');
ws = input('enter the stopband freq');
fs = input('enter the sampling freq');
w1 = 2*wp/fs;
w2 = 2*ws/fs;
[n,wn] = buttord(w1,w2,rp,rs);
ch = input('give type of filter 1:LPF,2:HPF');
switch ch
    case 1
        disp('frequency response of buttenvorth IIR LPF is:');
        [b,a] = butter(n,wn);
        [H,w] = freqz(b,a,512,fs);
        mag=20*log10(abs(H));
        phase=angle(H);
        subplot(211);
        plot(w,mag);
        grid on;
        ylabel('Magnitude in dB');
        xlabel('Normalized frequency in Hz');
        title('Magnitude Response of the desired butterwort LPF');
        subplot(212);
        plot(w,phase);
        grfd on;
        ylabel('Phase in radians');
        xlabel('Normalized frequency in Hz');
        title('Phase response of the desired butterworth LPF');
    case 2
        disp('frequency response of buttenuorth IIR HPF is:');
        [b,a] = butter(n,wn,'high');
        [H,w] = freqz(b,a,512,fs);
        mag=20*log10(abs(H));
        phase=angle(H);
        subplot(211);
        plot(w,mag);
        grid on;
        ylabel('Magnitude in dB');
        xlabel('Normalized frequency in Hz');
        title('Magnitude Response of the desired butterworth HPF');
        subplot(212);
        plot(w,phase);
        grid on;
        ylabel('Phase in radians');
        xlabel('Normalized frequency in Hz');
        title('Phase response of the desired butterworth HPF');
end
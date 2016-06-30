[y,fs]=audioread('ringring.wav','double');
fs_2 = 44100;
rows = [697 770 852 941];
columns = [1209 1336 1477 1633];
dtmf_tones=[rows columns]; 
final=dtmf_tones/(fs_2/2);
for i=1:length(final)
    z(i)=final(i)/35; % Q factor = 35
    [b,a]=iirnotch(final(i),z(i)); 
    y=filter(b,a,y);
end
%sound(y,fs);
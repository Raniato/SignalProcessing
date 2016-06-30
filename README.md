# SignalProcessing
MatLab project for Signal Processing Class (Spring 2016)

This project consists of 3 sub-programs. 

(1)
User gives DTMF sounds and sampling frequency and after hitting enter he can listen to the sounds accordingly (pretty straight forward).
Give input like this : hw1('1 0 7 3 # 6 *',8000) (8000Hz is the recommended sampling freq)
There is also an apply of tukeywin window in each DTMF sound.

(2)
Random DTMF sounds consisting a final signal.
Give input like this
y=[rand(1,200000) hw1('1 2 3 4',44100) rand(1,200000) hw1('5 6 7 8 9',44100) rand(1,281330)];
and then call this
hw2(y, 1000)
(1000 = bandpass filter usage)
For the program (2) these functions are used:
hw2.m
filters.m
points.m
minmax.m

(3)
Fun/enjoyable part. There is a ringring.wav file from ABBA here, full of DTMF noises. We don't want these, therefore we use the filters in (2)
to cut them off.
Just type : hw3
if the line %sound(y,fs) in the program is commented, then just type right after : sound(y,fs)

Simple MatLab project, hope it will be helpful for any newbie developing filter-signal programs and is clueless.
Feel free to contact me for any other detail!

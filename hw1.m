function final = hw1(numbers, fs)
  l = length(numbers);
  i=1;
  T=0.3;
  t = 0:(1/fs):T;
  a=0.5;
  while i<=l
    [b, c] = soundof(numbers(i), fs);
    y =a*(sin(2*pi*b*t)+sin(2*pi*c*t));
    if i==1
      final = y;
    else
      final = [final zeros(1,0.05*fs) y];
    end
    i=i+2;
    disp(y);
  end
  tukeyratio=0.5;
  tykeyfinal=tukeywin(length(final),tukeyratio);
  final=final.*tykeyfinal';
  sound(final,fs);
end

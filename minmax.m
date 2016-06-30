%meso arxhs leitourgias prosarmosmenou filtrou
function  f = minmax(x, y)
x = x*(2/max(abs(x)));  
z = filter(y, 1, x);
if max(abs(z)) >= 0.9
   f = 1;
else
   f = 0;
end
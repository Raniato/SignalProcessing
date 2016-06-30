function  x = filters(y, filter)
fs=44100;
n = 0:(filter-1);
for k = 1:length(y)
    h_t = (1 / filter) * ones(1, filter).* 2 .* cos(n*2*pi*(y(k)/fs));
    [H,~] = freqz(h_t, 1, 0:0.0001:pi); %apokrisi syxnotitas kai kanonikopoihsh
    b = 1 / max(abs(H)); 
	x(k, :) = b * h_t;
end
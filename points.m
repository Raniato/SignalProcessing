%akra dtmf akolouthias
function [b,e] = points(x,fs)
x = x(:)'/max(abs(x)); %kanonikopoihsh
length_x = length(x);
z = round(0.01*fs);
x = filter( ones(1,z)/z, 1, abs(x) );
x = diff(x>0.02);
k = find(x~=0)';
if x(k(1))<0, k = [1;k];  end
if x(k(end))>0, k = [k;length_x]; end
k';
index = [];
while length(k)>1
	if k(2)>(k(1)+10*z)
		index = [index, k(1:2)];
	end
	k(1:2) = [];
end
b = index(1,:);
e = index(2,:);
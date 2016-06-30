%20*44100=882000 samples
function result = hw2(tones, filters_size)
available = [  '1',  '2',  '3'; ...      
               '4',  '5',  '6'; ...       
               '7',  '8',  '9'; ...      
               '*',  '0',  '#']; 
result = [];
fs = 44100;
frequency_rows = [697 770 852 941]; 
frequency_columns = [1209 1336 1477 1633]; 
rows = filters(frequency_rows, filters_size);
columns = filters(frequency_columns, filters_size);
[b,e] = points(tones,fs);
for i = 1:length(b)
    xpart = tones(b(i):e(i)); 
    for k = 1:4
        rows_max(k) = minmax(xpart, rows(k,:));
        col_max(k) = minmax(xpart, columns(k,:));
    end
    row = find(rows_max == 1);
	column = find(col_max == 1);
	if length(row) == 1 && length(column) == 1
        result = [result, available(row,column)];
    else 
        result = [result, 0];
    end
end
end
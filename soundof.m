function [f1, f2] = soundof(x, fs)
  if strcmp(x,'1')
    f1=697;
    f2=1209;
  elseif strcmp(x,'2')
    f1=697;
    f2=1336;
  elseif strcmp(x,'3')
    f1=697;
    f2=1477;
  elseif strcmp(x,'4')
    f1=770;
    f2=1209;
  elseif strcmp(x,'5')
    f1=770;
    f2=1336;
  elseif strcmp(x,'6')
    f1=770;
    f2=1477;
  elseif strcmp(x,'7')
    f1=852;
    f2=1209;
  elseif strcmp(x,'8')
    f1=852;
    f2=1336;
  elseif strcmp(x,'9')
    f1=852;
    f2=1477;
  elseif strcmp(x,'*')
    f1=1209;
    f2=941;
  elseif strcmp(x,'#')
    f1=1477;
    f2=941;
  elseif strcmp(x,'0')
    f1=1336;
    f2=941;
  end
 end
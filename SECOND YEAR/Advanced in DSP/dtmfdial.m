function xx=dtmfdial(keyName,fs) 
%DTMFDIAL Create a DTMF tone 
%usage: xx=dtmfdial(keyName) 
% keyName = character which is one of the valid key names 
% xx = signal vector that corresponds to the DTMF 
dtmf.keys = ['1','2','3'; 
 '4','5','6'; 
 '7','8','9'; 
 '*','0','#']; 
ff_cols = [1209,1336,1477]; 
ff_rows = [697;770;852;941]; 
dtmf.colTones = ones(4,1)*ff_cols; 
dtmf.rowTones = ff_rows*ones(1,4);

dur1 = 0.20; 
dur2 = 0.05; 

tt = 0:1/fs:dur1; 
xx = 0; 
for ii = 1:length(keyName) 
    keyName = keyName(ii);
    
    [r,c] = find(dtmf.keys==keyName);
    
    if (numel(ff_rows) == 0 | numel(c) == 0)
        continue
    end;
    tone = cos(2*pi*dtmf.rowTones(r,c)*tt) + cos(2*pi*dtmf.colTones(r,c)*tt);

    xx = [xx, zeros(1), tone];
end
function xx=dtmfdial(keyName)
%DTMFDIAL Create a DTMF tone
%usage: xx=dtmfdial(keyName)
% keyName = character which is one of the valid key names
% xx = signal vector that corresponds to the DTMF
dtmf.keys = ['1','2','3';
'4','5','6';
'7','8','9';
'*','0','#'];
%The following commands corresponds to the frequencies of different keys.
%Since the keys will be generated according to the linear combination of
%ff_cols and ff_row,I will show them
ff_cols = [1209,1336,1477];
ff_rows = [697;770;852;941];
%enlarge the vector into matrix
dtmf.colTones = ones(4,1)*ff_cols;
dtmf.rowTones = ff_rows*ones(1,4);

[ii,jj]=find(keyName==dtmf.keys);
t = 0:0.001:0.2;%duration of speech
xx = cos(2*pi*t*ff_cols(jj))+cos(2*pi*t*ff_rows(ii));
soundsc(xx,8000)
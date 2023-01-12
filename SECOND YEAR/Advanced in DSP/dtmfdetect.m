function dtmfdetect(keyName,L,noise_level)
%DTMFDIAL   Create a DTMF tone
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
fs = 8000;
t = [0:1/fs:0.2];
[ii,jj]=find(keyName==dtmf.keys);
noise = sqrt(noise_level)*randn(size(t));
xx = cos(2*pi*dtmf.colTones(ii,jj)*t)+cos(2*pi*dtmf.rowTones(ii,jj)*t)+noise;
n=[0:L-1];
h1 = 1/L*cos(2*pi*ff_cols(1)*n/fs);
h2 = 1/L*cos(2*pi*ff_cols(2)*n/fs);
h3 = 1/L*cos(2*pi*ff_cols(3)*n/fs);
h4 = 1/L*cos(2*pi*ff_rows(1)*n/fs);
h5 = 1/L*cos(2*pi*ff_rows(2)*n/fs);
h6 = 1/L*cos(2*pi*ff_rows(3)*n/fs);
h7 = 1/L*cos(2*pi*ff_rows(4)*n/fs);
o1 = conv(h1,xx);
o2 = conv(h2,xx);
o3 = conv(h3,xx);
o4 = conv(h4,xx);
o5 = conv(h5,xx);
o6 = conv(h6,xx);
o7 = conv(h7,xx);
eo1 = sum(o1.*o1);
eo2 = sum(o2.*o2);
eo3 = sum(o3.*o3);
eo4 = sum(o4.*o4);
eo5 = sum(o5.*o5);
eo6 = sum(o6.*o6);
eo7 = sum(o7.*o7);
[dummy,col_index] = max([eo1, eo2, eo3]);
[dummy,row_index] = max([eo4, eo5, eo6, eo7]);
if (col_index==1)&(row_index==1)
    disp('The detected key is 1')
end
if (col_index==1)&(row_index==2)
    disp('The detected key is 4')
end
if (col_index==1)&(row_index==3)
    disp('The detected key is 7')
end
if (col_index==1)&(row_index==4)
    disp('The detected key is *')
end
if (col_index==2)&(row_index==1)
    disp('The detected key is 2')
end
if (col_index==2)&(row_index==2)
    disp('The detected key is 5')
end
if (col_index==2)&(row_index==3)
    disp('The detected key is 8')
end
if (col_index==2)&(row_index==4)
    disp('The detected key is 0')
end
if (col_index==3)&(row_index==1)
    disp('The detected key is 3')
end
if (col_index==3)&(row_index==2)
    disp('The detected key is 6')
end
if (col_index==3)&(row_index==3)
    disp('The detected key is 9')
end
if (col_index==3)&(row_index==4)
    disp('The detected key is #')
end


tic
fs=44100;%采样频率
T=60;%播放T秒
Base_Key=2;
t=1:(T*fs);
y=zeros(1,floor(T*fs));
Rate=0.8;%倍速

%=========  4  ==========
Off_Set=0;
y=Add_Note(t,y,fs,Base_Key+-5,1,1,(Off_Set+[0,0.9])/Rate);
y=Add_Note(t,y,fs,Base_Key+0,1,1,(Off_Set+[1,1.05])/Rate);
y=Add_Note(t,y,fs,Base_Key+2,1,1,(Off_Set+[1.05,2])/Rate);
y=Add_Note(t,y,fs,Base_Key+0,1,1,(Off_Set+[2,3])/Rate);
y=Add_Note(t,y,fs,Base_Key+2,1,1,(Off_Set+[3,3.05])/Rate);
y=Add_Note(t,y,fs,Base_Key+4,1,1,(Off_Set+[3.05,3.9])/Rate);


y=Add_Note(t,y,fs,Base_Key+4,0,1,(Off_Set+[0,2])/Rate);
y=Add_Note(t,y,fs,Base_Key+-3,1,1,(Off_Set+[2,4])/Rate);

y=Add_Note(t,y,fs,Base_Key+-1,-1,1,(Off_Set+[0,0.5])/Rate);
y=Add_Note(t,y,fs,Base_Key+4,-1,1,(Off_Set+[0.5,1])/Rate);
y=Add_Note(t,y,fs,Base_Key+7,-1,1,(Off_Set+[1,1.5])/Rate);
y=Add_Note(t,y,fs,Base_Key+-1,0,1,(Off_Set+[1.5,2])/Rate);
y=Add_Note(t,y,fs,Base_Key+-3,0,1,(Off_Set+[2,2.5])/Rate);
y=Add_Note(t,y,fs,Base_Key+4,-1,1,(Off_Set+[2.5,3])/Rate);
y=Add_Note(t,y,fs,Base_Key+0,0,1,(Off_Set+[3,3.5])/Rate);
y=Add_Note(t,y,fs,Base_Key+2,0,1,(Off_Set+[3.5,4])/Rate);

Off_Set=4;
y=Add_Note(t,y,fs,Base_Key+4,1,1,(Off_Set+[0,0.5])/Rate);
y=Add_Note(t,y,fs,Base_Key+0,1,1,(Off_Set+[0.5,1])/Rate);
y=Add_Note(t,y,fs,Base_Key+-3,1,1,(Off_Set+[1,1.5])/Rate);
y=Add_Note(t,y,fs,Base_Key+-5,1,1,(Off_Set+[1.5,2])/Rate);
y=Add_Note(t,y,fs,Base_Key+0,1,1,(Off_Set+[2,2.8])/Rate);




%========  Play % Save =============
sound(y/max(y)/2,fs)
audiowrite('风之诗.wav',y/max(abs(y))*0.9,fs)
toc
function y=Add_Note(t,y,fs,N_Freq,N_Group,Amp,T)
f_C2=261;
freq=f_C2*2^(N_Freq/12)*2^N_Group;%freq Hz
%==========================================================================
Curve_Start_End=@(x)exp(-(x-T(1)).^2/0.0001).*(x>=-2+T(1) & x<T(1))+ double(x>=T(1) & x<T(2))+exp(-(x-T(2)).^2/0.0003).*(x<2+T(2) & x>=T(2));

Curve_Envelope=@(x)1;
%=============================================================================
Color=10.^([0  ]/10);
%=============================================================================
Y_Single=zeros(1,numel(t));
for i=1:numel(Color)
    Y_Single=Y_Single+Color(i)*Amp*sin(2*pi*t/(fs/freq)*i);
end
Y_Single=Y_Single.*Curve_Start_End(t/fs).*Curve_Envelope(t/fs-T(1));
y=y+Y_Single;
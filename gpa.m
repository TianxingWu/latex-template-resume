% Read Data
A=xlsread('score.xls');
Type=[];
Value=[];
Standard=[];

% PKU
for i=1:length(A)
if A(i,1)>=90
A(i,3)=4.0;
elseif A(i,1)>=85 && A(i,1)<=89
A(i,3)=3.7;
elseif A(i,1)>=82 && A(i,1)<=84
A(i,3)=3.3;
elseif A(i,1)>=78 && A(i,1)<=81
A(i,3)=3.0;
elseif A(i,1)>=75 && A(i,1)<=77
A(i,3)=2.7;
elseif A(i,1)>=72 && A(i,1)<=74
A(i,3)=2.3;
elseif A(i,1)>=68 && A(i,1)<=71
A(i,3)=2.0;
elseif A(i,1)>=64 && A(i,1)<=67
A(i,3)=1.5;
elseif A(i,1)>=60 && A(i,1)<=63
A(i,3)=1.0;
else
A(i,3)=0.0;
end
end
Type=[Type; "PKU"];
Value=[Value; roundn(sum(A(:,2).*A(:,3))/sum(A(:,2)), -2)];
Standard=[Standard; roundn(4.00, -1)];

% USTC
for i=1:length(A)
if A(i,1)>=95
A(i,3)=4.3;
elseif A(i,1)>=90 && A(i,1)<=94
A(i,3)=4.0;
elseif A(i,1)>=85 && A(i,1)<=89
A(i,3)=3.7;
elseif A(i,1)>=82 && A(i,1)<=84
A(i,3)=3.3;
elseif A(i,1)>=78 && A(i,1)<=81
A(i,3)=3.0;
elseif A(i,1)>=75 && A(i,1)<=77
A(i,3)=2.7;
elseif A(i,1)>=72 && A(i,1)<=74
A(i,3)=2.3;
elseif A(i,1)>=68 && A(i,1)<=71
A(i,3)=2.0;
elseif A(i,1)>=65 && A(i,1)<=67
A(i,3)=1.7;
elseif A(i,1)>=64 && A(i,1)<=64
A(i,3)=1.5;
elseif A(i,1)>=61 && A(i,1)<=63
A(i,3)=1.3;
elseif A(i,1)>=60 && A(i,1)<=60
A(i,3)=1.0;
else
A(i,3)=0.0;
end
end
Type=[Type; "USTC"];
Value=[Value; roundn(sum(A(:,2).*A(:,3))/sum(A(:,2)), -2)];
Standard=[Standard; roundn(4.3, -1)];

% SJTU
for i=1:length(A)
if A(i,1)>=95
A(i,3)=4.3;
elseif A(i,1)>=90 && A(i,1)<=94
A(i,3)=4.0;
elseif A(i,1)>=85 && A(i,1)<=89
A(i,3)=3.7;
elseif A(i,1)>=80 && A(i,1)<=84
A(i,3)=3.3;
elseif A(i,1)>=75 && A(i,1)<=79
A(i,3)=3.0;
elseif A(i,1)>=70 && A(i,1)<=74
A(i,3)=2.7;
elseif A(i,1)>=67 && A(i,1)<=69
A(i,3)=2.3;
elseif A(i,1)>=65 && A(i,1)<=66
A(i,3)=2.0;
elseif A(i,1)>=62 && A(i,1)<=64
A(i,3)=1.7;
elseif A(i,1)>=60 && A(i,1)<=61
A(i,3)=1.0;
else
A(i,3)=0.0;
end
end
Type=[Type; "SJTU"];
Value=[Value; roundn(sum(A(:,2).*A(:,3))/sum(A(:,2)), -2)];
Standard=[Standard; roundn(4.3, -1)];

GPAs=table(Type, Value, Standard);
clc;disp(GPAs);
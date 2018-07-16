T=csvread('test.csv');
ID=T(:,1);
OO=(1:550000);
i=1;
while i<550001
  OO(i)=1;
  i=i+1;
endwhile

Q=[OO', T(:,2:30)];
OUT=[(1:550000)',(1:550000)'];
b=Q*Theta;

j=1;
ns=0;
nb=0;
while j<550001
  if b(j)>=0.5
    OUT(j,1)=ID(j);
    OUT(j,2)=1;
    %disp(ID(j)) 
    %disp('s')
    ns=ns+1;
    j=j+1;
  else
    OUT(j,1)=ID(j);
    OUT(j,2)=0;
    %disp(ID(j)) 
    %disp('b')
    nb=nb+1;
    j=j+1;
  
  endif
endwhile

disp('number of signal is ')
ns
disp('number of background is ')
nb
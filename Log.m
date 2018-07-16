T=csvread('training.txt');


ID=T(:,1);

OO=(1:10000);
i=1;
while i<10001
  OO(i)=1;
  i=i+1;
endwhile

Y=[OO', T(40001:50000,2:30)];

b=1/[1+exp(-Y*Theta)];

j=1;
ns=0;
nb=0;
while j<10001
  if b(j)>=0.5
    %disp(ID(j)) 
    %disp('s')
    ns=ns+1;
    j=j+1;
  else
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
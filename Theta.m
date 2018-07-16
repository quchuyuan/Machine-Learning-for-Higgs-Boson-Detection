L=csvread('training.txt');

O=(1:50000);
i=1;
while i<50001
  O(i)=1;
  i=i+1;
endwhile

m=50000;
X=[O',L(2:50001,2:30)];

sz=size(L);
q=sz(1,2);
y=L(2:50001,q);

Theta=-0.01*ones(1,30)';

g=1/[1+exp(-X*Theta)];

for k=1:1000
   Theta= Theta-(0.0000000001/m).*X'*(g'-y);
endfor

Theta

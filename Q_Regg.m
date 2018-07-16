A=csvread('training.txt'); % make sure got the correct path of training set.

O=(1:250000);
i=1;
while i<250001
  O(i)=1;
  i=i+1;
endwhile
QO=A(:,2:30).*A(:,2:30);

K=[O',A(:,2:30),QO];

sz=size(A);
q=sz(1,2);
y=A(:,q);

Theta=pinv(K'*K)*K'*y
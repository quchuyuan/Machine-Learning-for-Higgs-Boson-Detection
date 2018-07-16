An=csvread('ans.csv');

c=0;

for k=2:550000
  Index=An(k,1)-349999;
  if An(k,3)=OUT(Index,2)
      c=c+1;
  endif
endfor

correct_rate=c/550000
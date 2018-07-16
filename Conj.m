L=csvread('training.txt');



theta=-0.000001*ones(1,30)';



function [jVal, gradient] = costFunction(theta)
  O=ones(50000);
  
  X=[O',L(2:50001,2:30)];

  sz=size(L);
  q=sz(1,2);
  y=L(2:50001,q);
  n=50000;
  g=1/[1+exp(-X*theta)];
  
  jVal = (1/n)*(-y'*log(g)-(ones(50000)'-y)'*log(1-g));
  gradient = (1/n)*X'*(g'-y);
endfunction

options = optimset('GradObj', 'on', 'MaxIter', 100);
initialTheta = zeros(2,1);
[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);
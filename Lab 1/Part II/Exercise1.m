clc;
p = [1,2,1];
q = [1,1];

resultOfProduct = conv(p,q) %p(s)*q(s)

fprintf('-------------------------------------------------\n');

rootsOfP = roots(p) %roots of p 

fprintf('-------------------------------------------------\n');

rootsOfQ = roots(q) %roots of q

fprintf('-------------------------------------------------\n');

pAtNegativeOne = polyval(p,-1) %p(-1)

fprintf('-------------------------------------------------\n');

qAtSix = polyval(q,6) %q(6)

fprintf('-------------------------------------------------\n');


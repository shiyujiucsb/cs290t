function y=sol(k)
C = [6,2,7;2,11,10;7,10,3];
A = [60,30,20;30,20,15;20,15,12];
p =13;
b = [15;12;10];
i = 0;
xbar = [0;0;0];
while i<k
	x = mod(C*b,p);
	b = (b-A*x)./p;
	xbar = xbar + (x.*(p.^i));
	i = i+1;
end
y = [0;0;0];
xbar
y(1) = test(xbar(1), k);
y(2) = test(xbar(2), k);
y(3) = test(xbar(3), k);
end


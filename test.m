function y = test(s,k)
p = 13;
h = (p.^k).^0.5;

u_neg_1 = 13.^k;
u0 = s;
v_neg_1 = 0;
v0 = 1;

i=0
u1 = h+1;
while u1>=h 
	q0 = floor(u_neg_1./u0)
	u1 = u_neg_1 - q0*u0
	v1 = v_neg_1 + q0*v0
	if u1>h 
		u_neg_1 = u0;
		v_neg_1 = v0;
		u0 = u1;
		v0 = v1;
	end 
	i = i+1
end
y = (-1).^i*u1./v1;
end

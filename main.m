clc;
xx = linspace(0.1, 2, 10000);
yy = zeros(1, 10000);
for i = 1 : 10000
   yy(i) = tsypkin_ser(xx(i));
end
%disp(yy)
plot(yy)
grid on

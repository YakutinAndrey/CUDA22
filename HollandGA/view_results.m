fid = fopen('results.txt');
data = textscan(fid, '%f %f %f');
fclose(fid);
x = data{1};
y = data{2};
fitnessvaluecost = data{3};
mask = (abs(x) < 2500) & (abs(y) < 2500);
xfilt = x(mask);
yfilt = y(mask);
fitnesvaluecostfilt= fitnessvaluecost(mask);
maskV = (fitnessvaluecost > 0.95);
%plot(x(maskV), fitnessvaluecost(maskV), '.')
plot(xfilt,yfilt,'.')

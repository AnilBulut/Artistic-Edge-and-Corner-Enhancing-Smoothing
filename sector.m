%this part is used for creating sectors
function S = sector(size1, size2, a, wd)

[x,y] = meshgrid(linspace(-size2/2, size2/2, size2), linspace(size1/2, -size1/2, size1));

S = (x*cos(a-wd+pi/2) + y*sin(a-wd+pi/2) > 0) .* (x*cos(a+wd+pi/2) + y*sin(a+wd+pi/2) <= 0);

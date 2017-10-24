%this part is used for creating cutting functions
%it creates cutting functions from predefinedsectors

function y = smoothgaux(img, sigma, n)

U = ceil(sigma*n);
gauss = exp(-[-U:U].^2/2/sigma^2); 
gauss = gauss/sum(gauss);

x = zeros(size(img));
for i = -U:U
    x = x + circshift(img, [i,0,0]) *gauss(i+U+1);
end

y = zeros(size(img));
for i = -U:U
    y = y + circshift(x, [0,i,0]) *gauss(i+U+1);
end

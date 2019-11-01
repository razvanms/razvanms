%vectorul aleator cu distributie normala se va numi "a" si va avea 10
%elemente
a=randn(1, 10);
for i=1:1:10
    if(a(i)<0)
        b=a(i)
    end
end
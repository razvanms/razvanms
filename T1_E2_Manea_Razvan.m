%vectorul aleator cu distributie normala se va numi "a" si va avea 10
%elemente
a=randn(1, 10);%declararea vectorului cu distributie normala
for i=1:1:10 %bucla
    if(a(i)<0) %daca elementul este negativ
        b=a(i) %afiseaza elementul
    end
end
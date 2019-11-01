%Rezolutie temporara 2ms.punctul c)

%analog pentru 20ms 200ms doar ca se modifica __ din t=0:0.02/0.2:__

t=0:0.002:1.510;%variabila timp necesara pentru a afisa 6 nivele aleatoare

i=1;%contor

n=[-5,-3,-1,1,3,5] ; %nivelele semnalului

pozitia=randi(length(n)); %cu functia randi extrag o pozitie aleatoare din n

Nivel_aleator=n(pozitia);%nivel_aleator ia valoarea din pozitia extrasa

v1=zeros(1,126); %t=0:0.002:0.25, de la 0 la 0.25 cu pasul de 0.002 sunt 126



for i=1:1:126  

    v1(i)=Nivel_aleator;  %umplu primul vector cu un nivel aleator

end

   

v2=zeros(1,126);

pozitia=randi(length(n));

Nivel_aleator=n(pozitia);

for i=1:1:126

    v2(i)=Nivel_aleator; %umplu al doi-lea vector cu un nivel aleator

end



v3=zeros(1,126);

pozitia=randi(length(n));

Nivel_aleator=n(pozitia);

for i=1:1:126

     v3(i)=Nivel_aleator;%umplu al trei-lea vector cu un nivel aleator

end



v4=zeros(1,126)

pozitia=randi(length(n));

Nivel_aleator=n(pozitia);



for i=1:1:126

    v4(i)=Nivel_aleator;%umplu al patru-lea vector cu un nivel aleator

end



v5=zeros(1,126)

pozitia=randi(length(n));

Nivel_aleator=n(pozitia);



for i=1:1:126

    v5(i)=Nivel_aleator;%umplu al cinci-lea vector cu un nivel aleator

end



v6=zeros(1,126)

pozitia=randi(length(n));

Nivel_aleator=n(pozitia);



for i=1:1:126

    v6(i)=Nivel_aleator;%umplu al sase-lea vector cu un nivel aleator

end





V=[v1,v2,v3,v4,v5,v6];

plot(t,V),grid,axis([0 1.6 -7 7]),xlabel('timp(s)'),

ylabel('Amplitudine(V)');%afisez V=f(t)
%Rezolutie temporara 200ms.a) 

%analog pentru 20ms 2ms doar ca se modifica __ din t=0:0.02/0.2:__

t=0:0.002:0.502;%variabila timp necesara pentru a afisa 2 nivele aleatoare

i=1;%contor

n=[-1,1] ; %nivelele semnalului

pozitia=randi(length(n)); %cu functia randi extrag o pozitie aleatoare din n

Nivel_aleator=n(pozitia);%nivel_aleator ia valoarea din pozitia extrasa

v1=zeros(1,126); %t=0:0.002:0.25, de la 0 la 0.25 cu pasul de 0.02 sunt 126



for i=1:1:126 

    v1(i)=Nivel_aleator;  %umplu primul vector cu un nivel aleator

end

   

v2=zeros(1,126);

pozitia=randi(length(n));

Nivel_aleator=n(pozitia);

for i=1:1:126

    v2(i)=Nivel_aleator; %umplu al doilea vector cu un nivel aleator

end
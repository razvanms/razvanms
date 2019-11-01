%vectorul va avea 10 elemente complexe
c=rand(1,10)+j*rand(1,10)
function[medie,patrat,inmultire]=fct(c); %sintaxa functiei
lungime=length(c); %citirea lungimii vectorului
medie=real(sum(c)/lungime); %media
patrat=c.^2; %patratul elem.
inmultire=a*a.' %inmultirea cu transpusa
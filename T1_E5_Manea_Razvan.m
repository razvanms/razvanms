%a)

F = 50;

t = 0:0.001:0.2; 

s = 2*sin(2*pi*F*t);



plot(t,s,'.-'),xlabel('Timp [s]'),grid 

hold on

%La pasul de variatie a variabilei t la 0.01 graficul nu mai arata ca o 

%sinusoida, deoarece ca pasul de variatie este prea mic. La fiecare valoare a

%lui t se va inlocui in sinus t-ul cu valoare respectiva si se va obtine

%un punct pe grafic. La final, functia plot o sa uneasca acele puncte. Daca

%i-am dat functiei destule puncte atunci graficul o sa arate ca o sinusoida

%altfel nu. La pasul 0,.0002 sunt unite foarte multe puncte, deci

%graficul va arata bine.



%b)In toate cele 3 situatii perioada este aceeasi T=0.02 s.



%c)

f=20;

t=0:0.001:0.2;

a=2*cos(2*pi*f*t);



plot(t,a,'-r'),grid;
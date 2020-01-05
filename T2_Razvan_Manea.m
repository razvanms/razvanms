D=14;%avem un semanal triunghiular simetric monoalernant de durata D=14
T=4*D;%perioada semnalului
f=1/T;%frecventa semnalului
w=2*pi*f;%pulsatia semnalului
rezolutia=0.0001; %am ales rezolutia temporara de 0.1 ms
t=0:rezolutia:2*T;% t porneste de la valoarea initiala 0,cu pasul de 0.0001, afisand in final 2 perioade (2*T),
N=50;%numarul de coeficienti
s=(sawtooth(w*t,0.5)+abs(sawtooth(w*t,0.5)))/2;
%avem un semnal triunghiular redresat monoalternanta de perioada T=56
C = zeros(1,2*N+1);
%initializam vectorul de coeficienti cu valori nule
for n = -N:N
    C(n+N+1) = 1/T * integral(@(t)(1/2*sawtooth(w*t,0.5)+1/2*abs(sawtooth(w*t,0.5))).*exp(-1j*n*w*t),0,T) ;
    %calculul propriu-zis al coeficientiilor cu formula analitica
    %@(t) <=> dt
end
%calculam seria reconstruita cu numar finit de coeficienti
sr = 0;
for n = -N:N
    sr = sr + C(n+N+1)*exp(1j*n*w*t) ;
end
figure(1);
hold on
plot(t,s);%reprezentarea semnalului initial
plot(t,real(sr),':r',t,imag(sr),':r');%reprezentarea semnalului reconstruit
%:r inseamna linie punctata cu rosu
axis([-1 150 -0.1 1.1])
xlabel('Timpul[s]');
ylabel('s(t)-linie continua si sr(t)-linie punctata cu rosu');
title('Suprapunerea semnalelor s(t) si sr(t)')
hold off
%prin hold on/off pot reprezenta mai multe grafice in acelasi sistem
figure(2);
hold on
stem((-N:N)*w,2*abs(C));
%stem-fucntie pt reprezentarea valorilor discrete
plot((-N:N)*w,2*abs(C),':r')
xlabel('Pulsatia w [rad/s]');
ylabel('Amplitudinile Ak=2|C(nw)|');
axis([-5 5 -0.05 0.55])
title('Spectrul de Amplitudini');
hold off
%Analiza Fourier a semnalelor analogice  ne permite sa exprimam orice semnal ce indeplineste criteriul de suficienta Diriclet
%intr-o suma finita de semnale elementare,semnal necunoscut pe baza spectrului sau de amplitudini
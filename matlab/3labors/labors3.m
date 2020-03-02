function y = lab3(t)
if nargin == 0
t = 0:0.01:8;
end

%datu filtracija

%t_const = 3:0.01:5;
t_const_f = (t>=3)&(t<5);
t_const = t(t_const_f);

%t_sin = 1:0.01:3;
t_sin_f = (t>=1)&(t<3);
t_sin = t(t_sin_f);

%t_zero = 0:0.01:1;
t_zero_f = (t>=0)&(t<1);
t_zero = t(t_zero_f);

%t_saw = 5:0.01:7;
t_saw_f = (t>=5)&(t<7);
t_saw = t(t_saw_f);

%t_noise = 7:0.01:8;
t_noise_f = (t>=7)&(t<=8);
t_noise = t(t_noise_f);


%% Sinuoida
% A0 = līdzkomponente
% A = amplitūda
% T = laiks vienai pilnai svārstībai, f = 1/T
%T = viss_laiks / pilns_periodu_skaits

%t_sin = 1:0.01:3;
A0 = 0;
A = 1.5;
T = (3-1)/10;
f = 1/T;
% delay = nobīde, jo funkcija nesākās no x=0 koordinātas, bet no x=1.5
delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
%plot  (t_sin,y_sin)
% axis([xmin xmax ymin ymax])
axis([0 8 -2 2])
%% Lineari mainigs signals

%t_saw = 5:0.01:7;
% k = (yA-yB)/(tA-tB)
k = (-1-0)/(5-7);
delay = 7;
% delay - vieta kur signals skerso x asi
y_saw = k*(t_saw-delay);
%plot(t_saw,y_saw)

%% Konstante
% t_const = 3:0.01:5;
y_const = 0 + zeros(size(t_const));
%plot(t_const,y_const)

%% Konstante - nulles signals
%t_zero = 0:0.01:1;
y_zero = -1.5 + zeros(size(t_zero));
%plot(t_zero,y_zero)

%% Troksna signals
% t_noise = 7:0.01:8;
y_noise = 1.5*rand(size(t_noise))-0.75;
%plot(t_noise,y_noise)

t = [t_zero,t_sin,t_const,t_saw,t_noise];
y = [y_zero,y_sin,y_const,y_saw,y_noise];
grid on
if nargout == 0
plot(t,y)
axis([0 8 -2 2])
grid on
y=[];
end
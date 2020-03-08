%% 3.laboratorijas darbs - funkciju grafiki
%% Darba merki
% Iemacities doto signalu sadalit tados gabalos, lai no tiem katra varetu
% izveidot funkciju, to uzplotot un rezultata apvienojot visas shis funkcijas iznaktu dotais signals.
% Iemacities veikt datu filtraciju, ka ari parveidot izveidoto skriptu par
% vienu funkciju.
%% Darba programma
function y = lab3(t)
if nargin == 0
t = 0:0.01:8;
end

t_const_f = (t>=3)&(t<5);
t_const = t(t_const_f);

t_sin_f = (t>=1)&(t<3);
t_sin = t(t_sin_f);

t_zero_f = (t>=0)&(t<1);
t_zero = t(t_zero_f);

t_saw_f = (t>=5)&(t<7);
t_saw = t(t_saw_f);

t_noise_f = (t>=7)&(t<=8);
t_noise = t(t_noise_f);

A0 = 0;
A = 1.5;
T = (3-1)/10;
f = 1/T;
delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
axis([0 8 -2 2])

k = (-1-0)/(5-7);
delay = 7;
y_saw = k*(t_saw-delay);

y_const = 0 + zeros(size(t_const));

y_zero = -1.5 + zeros(size(t_zero));

y_noise = 1.5*rand(size(t_noise))-0.75;

t = [t_zero,t_sin,t_const,t_saw,t_noise];
y = [y_zero,y_sin,y_const,y_saw,y_noise];
grid on
if nargout == 0
plot(t,y)
axis([0 8 -2 2])
grid on
y = [];
end
%% Secinajumi
% Grutakais ir izdomat tadu funkciju, kas pareizi attelotu doto signala
% dalu. Bet kad tas izdarits, sis funkcijas apvienot viena jau vairs
% nesagada nekadas problemas. Salidzinot darba rezultata ieguto signalu,
% tas atbilst dotajam signalam, lidz ar ko darba merkis ir izpildits.
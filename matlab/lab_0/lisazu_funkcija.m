function lisazu_funkcija(f1,f2)
% Funkcija kas uzzīmē Lisāžu figūras
%Call:
% lisazu_funkcija(1,2)
%
% 27.01.2020
% autors students
t = 0:0.01:1;
%  f1=4; f2=9;
x = cos(2*pi*f1*t);
y = sin(2*pi*f2*t);
plot (x,y)
shg
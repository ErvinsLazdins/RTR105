%% Ievads simboliskaja matematika 2.laboratorijas darbs
%% Darba merki
% Iepazities ar matlab simbolisko matematiku un latex pielietojumu,
% iemacities izmantot funkcijas pretty,simplify,solve,diff,vectorize u.c..
%% Darba programma
syms x g %1.uzd
funkc = g*sin(x^2)==log(g);
g = solve(funkc,g); % tiek atrisinats vienadojums pçc g
pretty(funkc) % skaisti parada pasu vienadojumu
pretty(g) % skaisti parada atrisinajumu pçc g
syms x y %2.uzd
y = 5*x+(((x-1)*(x-2))/((x+1)*(x+2))); % dota funkcija
ydiff = simplify(diff(y)); % atvasina un vienkarso funkciju
yvect = vectorize(y); % vektorize funkciju
ydv = vectorize(ydiff); % vektorize funkcijas atvasinajumu
x = -3:0.01:0; % dotais x apgabals
yvm = eval(yvect);
ydvm = eval(ydv);
plot(x,yvm,x,ydvm)
grid on
title('f(x) un f `(x) grafiki')
a = latex(y);
b = latex(ydiff);
h = legend(['$',a,'$'],['$',b,'$']);
set(h,'Interpreter','latex','FontSize',15)

%% Secinajumi
% Darba merki tika izpilditi, parbaudot rezultatus tie sakrit ar matlab
% iegutajiem. Vieniga problema bija ar grafika legend, jo defaulta tai bija
% parak mazs fonts. Bet tas tika noversts ar "FontSize", kas padarija
% tekstu izlasamu. Matlabam ir daudz iespejas, kuras instalejas ka
% "toolboxi", piemeram, man bija papildus jainstale "symnolic math
% toolbox", lai stradatu syms funkcija. Bet rezultata var secinat, ka
% matlabam ir loti daudz pielietojumi, kaut vai lai atrastu parastu
% atvasinajumu vai integrali, jo izmantosana ir daudz atraka un vienkarsaka
% ka jebkuram kalkulatoram.

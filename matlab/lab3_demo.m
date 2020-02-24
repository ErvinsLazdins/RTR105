function y = lab3_demo(t)
if nargin == 0 % nargin - ieejas argumentu skaits
t = 0:0.01:6.5; % nodefinēts kopīgais t
end
%% pārejos t izteiksim ar datu filtrāciju

% t_saw = 0:0.01:0.5;
t_saw_f = (t>=0)&(t<0.5);
t_saw = t(t_saw_f);

% t_zero = 0.5:0.01:1.5;
t_zero_f = (t>=0.5)&(t<1.5);
t_zero = t(t_zero_f);

% t_sin = 1.5:0.01:3.5;
t_sin_f = (t>=1.5)&(t<3.5);
t_sin = t(t_sin_f);

% t_const = 3.5:0.01:5;
t_const_f = (t>=3.5)&(t<5);
t_const = t(t_const_f);

% t_noise = 5:0.01:6.5;
t_noise_f = (t>=5)&(t<=6.5); %pēdejam elementam mazaks un vienāds, nevis tikai mazāks
t_noise = t(t_noise_f);

%% sinusoīda
    % y = A0 + A * sin( 2pi*f(t-delay) )
    % A0 = līdzkomponente
    % A = amplitūda
    % T = laiks vienai pilnai svārstībai, f = 1/T
    % T = viss_laiks / pilns_periodu_skaits
    %t_sin = 1.5:0.01:3.5;
    A0 = 0;
    A = 1.5;
    T = (3.5-1.5)/2;
    f = 1/T;
    % delay = nobīde, jo funkcija nesākās no x=0 koordinātas, bet no x=1.5
    delay = 1.5;
    y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
    % plot  (t_sin,y_sin)
    % axis([xmin xmax ymin ymax])
    axis([0 6.5 -2 2])
    
    %% lineāri mainīgs signāls
    %t_saw = 0:0.01:0.5;
    % k = (yA-yB)/(tA-tB);
    k = (1-0)/(0-0.5);
    delay = 0.5;
    y_saw = k*(t_saw-delay);
    %plot(t_saw,y_saw)
    % lai noteiktu delay vērtību, jaatrod vietu kur funkcija šķērso x asi
    % delay ir laika moments kad dotais signāls šķērso laika asi
     
    %% konstante (laikā nemainīgs signāls)
    %t_const = 3.5:0.01:5;
    % ja rakstīsim vienkārši y = 1.5, tad būs kļūda, jo y vērtību vajag
    % norādīt pie katras t vērtības, neskatoties uz to, ka y visu laiku ir
    % viens un tas pats
    y_const = 1.5 + zeros(size(t_const));
    % 151 jo ir 150 reizes jāieliek y, lai tie atbilstu visiem ieliktajiem t (kuri likti no 3.5 līdz 5 ar soli 0.01)
    % plot(t_const,y_const)
    
    %% konstante (nulles signāls, y=0)
    %t_zero = 0.5:0.01:1.5;
    y_zero = zeros(size(t_zero));
    % plot(t_zero,y_zero)
    %% Trokšņa signāls (švīkas)
    % svārstības notiek no 5 līdz 6.5
    %t_noise = 5:0.01:6.5;
    y_noise = 1.5*rand(size(t_noise))-0.75;
    % ar rand komandu mums šobrīd sanāk random ģenerēti skaitļi no 0 līdz
    % 1, bet mums vajag no -0.75 līdz 0.75, tāpēc pareizinam ir darbības
    % *1.5 un -0.75
    % plot(t_noise,y_noise)
    %% visu signālu apvienošana
    t = [t_saw,t_zero,t_sin,t_const,t_noise];
    y = [y_saw,y_zero,y_sin,y_const,y_noise];
    grid on
    if nargout == 0 
    plot(t,y)
    y=[];
    end
    %% Nākamais uzdevums
    % pārveidot skriptu kas uzzīmē mūsu doto signalu par funkciju kas
    % atgriež signāla vērtības
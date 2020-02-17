%% Ievads simboliskajā matemātikā
A = [a11 a12; a21 a22];
{Undefined function or variable 'a11'.
} 
syms all a11 a12 a21 a22 b11 b12 b21 b22
A = [a11 a12; a21 a22];
B = [b11 b12; b21 b22];
A
 
A =
 
[ a11, a12]
[ a21, a22]
 
B
 
B =
 
[ b11, b12]
[ b21, b22]
 
A = A*B
 
A =
 
[ a11*b11 + a12*b21, a11*b12 + a12*b22]
[ a21*b11 + a22*b21, a21*b12 + a22*b22]
 
C
{Undefined function or variable 'C'.
} 
D = A.*B
 
D =
 
[ b11*(a11*b11 + a12*b21), b12*(a11*b12 + a12*b22)]
[ b21*(a21*b11 + a22*b21), b22*(a21*b12 + a22*b22)]
 
D
 
D =
 
[ b11*(a11*b11 + a12*b21), b12*(a11*b12 + a12*b22)]
[ b21*(a21*b11 + a22*b21), b22*(a21*b12 + a22*b22)]
 
%% Kā definēt simbolisko mainīgo
% 1.
% definēsim x y kā simboliskus mainīgos
% izmantojot "sym" 
x = sym('x');
y = sym('y');
%% atradīsim kvadrātsakni no x^2
y = x^2;
z sqrt(y)
{Undefined function or variable 'z'.
} 
z = sqrt(y)
 
z =
 
(x^2)^(1/2)
 
x = sym('x','positive');
z = sqrt(y)
 
z =
 
x
 
y = x^2
 
y =
 
x^2
 
z = sqrt(y)
 
z =
 
x
 
%% kā definēt simbolisko mainīgo  variants Nr.2 
syms x y
% šajā rindā esam definējuši x y kā simboliskus mainīgos
syms x y positive
syms a11 a12 a21 a22
A = [a11 a12; a21 a22];
A'
 
ans =
 
[ conj(a11), conj(a21)]
[ conj(a12), conj(a22)]
 
%% pateiksim ka matricas elementi nav kompleksi (conj), bet reāli
syms a11 a12 a21 a22 real
A = [a11 a12; a21 a22];
A'
 
ans =
 
[ a11, a21]
[ a12, a22]
 
%% Kā definēt simbolisku mainīgo variants Nr.3
A = sym('a',[2 3]);
A 
 
A =
 
[ a1_1, a1_2, a1_3]
[ a2_1, a2_2, a2_3]
 
A = sym('a_%d%d',[2 3]);
A
 
A =
 
[ a_11, a_12, a_13]
[ a_21, a_22, a_23]
 



%% Atvasināšana



syms x 
y = x^2;
% atvasina ar funkciju diff
diff y

ans =

     []

diff(y)
 
ans =
 
2*x
 
diff(x^2)
 
ans =
 
2*x
 
%% parciālais atvasinājums
syms x y  
z = 3*x^5+7*y^6;
diff(z,x)
 
ans =
 
15*x^4
 
diff(z,y)
 
ans =
 
42*y^5
 
%% integrēšana 
syms x 
y = x^3;
int(y)
 
ans =
 
x^4/4
 
int(x^3,x)
 
ans =
 
x^4/4
 
syms a 
int(x^3,a)
 
ans =
 
a*x^3
 

syms x
int(x,x,0,3)
 
ans =
 
9/2
 

double(int(x,x,0,3))

ans =

    4.5000

&& neierakstot double, atbilde ir simboliskais mainīgais
 && neierakstot double, atbilde ir simboliskais mainīgais
 ↑
{Error: Invalid use of operator.
} 
%% neierakstot double, atbilde ir simboliskais mainīgais
int(x^2,x,-3,3)
 
ans =
 
18
 


%% Robežas
syms x
limit(1/(x-1),x,1,'left')
 
ans =
 
-Inf
 
% tas nozīmē: robeža no 1/x-1, ja x tiecās uz 1 no kreisās pusses


%% Vienādojumu risināšana

syms(x)
syms x
%% atrisināt vienādojumu x^2-7x+12=0 ; saknēm jābūt x1=3 x2=4
solve(x^2-7x+12==0,x)
 solve(x^2-7x+12==0,x)
            ↑
{Error: Invalid expression. Check for missing multiplication operator, missing or unbalanced delimiters, or other syntax error. To
construct matrices, use brackets instead of parentheses.
} 
solve(x^2-7*x+12==0,x)
 
ans =
 
 3
 4
 
%% Vienādojumu sistēmu risināšana
syms x y z
atb = solve(x+y+z==10,x-y+z==4,x+y-z==0)

atb = 

  <a href="matlab:helpPopup struct" style="font-weight:bold">struct</a> with fields:

    x: [1×1 sym]
    y: [1×1 sym]
    z: [1×1 sym]

atb.x
 
ans =
 
2
 
atb.y
 
ans =
 
3
 
atb.z
 
ans =
 
5
 
%% simboliskie mainīgie
%% simboliskās konstantes
a = vpa(2)
 
a =
 
2.0
 
b = vpa(pi)
 
b =
 
3.1415926535897932384626433832795
 
c = (sqrt(2))

c =

    1.4142

c = vpa(sqrt(2))
 
c =
 
1.4142135623730950488016887242097
 
d = sqrt(a)
 
d =
 
1.4142135623730950488016887242097
 
% zīmju skaitu aiz komata var mainīt ar komandu digits
digits
 
Digits = 32
 
digits(100)
d = sqrt(a)
 
d =
 
1.414213562373095048801688724209698078569671875376948073176679737990732478462107038850387534327641573
 
b = vpa(exp(1))
 
b =
 
2.71828182845904553488480814849026501178741455078125
 
vpa(pi)
 
ans =
 
3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068
 
%% vpa = variable precision arithmetic
%% Rezultātu vienkāršošana
syms x 
y = 1/((x-1)*(x-2))
 
y =
 
1/((x - 1)*(x - 2))
 
diff(y)
 
ans =
 
- 1/((x - 1)*(x - 2)^2) - 1/((x - 1)^2*(x - 2))
 
int(y)
 
ans =
 
log(1 - 1/(x - 1))
 
y = (x-4)*x-5)/((x-1)*(x-2));
 y = (x-4)*x-5)/((x-1)*(x-2));
              ↑
{Error: Invalid expression. When calling a function or indexing a variable, use parentheses. Otherwise, check for mismatched
delimiters.
} 
y = (x-4)*(x-5)/((x-1)*(x-2));


diff(y)
 
ans =
 
(x - 4)/((x - 1)*(x - 2)) + (x - 5)/((x - 1)*(x - 2)) - ((x - 4)*(x - 5))/((x - 1)*(x - 2)^2) - ((x - 4)*(x - 5))/((x - 1)^2*(x - 2))
 
y_atvasinajums = diff(y)
 
y_atvasinajums =
 
(x - 4)/((x - 1)*(x - 2)) + (x - 5)/((x - 1)*(x - 2)) - ((x - 4)*(x - 5))/((x - 1)*(x - 2)^2) - ((x - 4)*(x - 5))/((x - 1)^2*(x - 2))
 
%%  mēģināsim vienkāršot atbildi
simplify(y_atvasinajums)
 
ans =
 
(6*(x^2 - 6*x + 7))/(x^2 - 3*x + 2)^2
 
%% funkcija simplify vienkāršo rezultātu
y = (x-3)*(x-4);
y
 
y =
 
(x - 3)*(x - 4)
 
expand(y)
 
ans =
 
x^2 - 7*x + 12
 
% citi veidi kā vienkāršot
% ^
atb = expand(y)
 
atb =
 
x^2 - 7*x + 12
 
factor(y)
 
ans =
 
[ x - 3, x - 4]
 
horner(atb)
 
ans =
 
x*(x - 7) + 12
 
%% Rezultātu "skaistā" attēlošana
y = (x-4)*(x-5)/((x-1)*(x-2));
pretty(y)
(x - 4) (x - 5)
---------------
(x - 1) (x - 2)

%% Ko darīt ar rezultātu
 
% dots:
% y = (x-4)*(x-5)/((x-1)*(x-2));
% uzdevums:
% atrast atvasinājumu un uzzīmēt ar plot
% risinājums:
%% 1. definēsim simboliskus mainīgos
syms x
y = (x-4)*(x-5)/((x-1)*(x-2));
% 2. atvasina
y_atv = simplify(diff(y))
 
y_atv =
 
(6*(x^2 - 6*x + 7))/(x^2 - 3*x + 2)^2
 
% 3. izteiksmes vektorizācija
% parasto reizināšanu * uzskata par matricu, bet mums vajag vektoru veidā
% lai uztaisītu kā vektoru reizinājumu, jāraksta .*
y_vekt = vectorize(y)

y_vekt =

    '((x - 4).*(x - 5))./((x - 1).*(x - 2))'

y_atv_vekt = vectorize(y_atv)

y_atv_vekt =

    '(6.*(x.^2 - 6.*x + 7))./(x.^2 - 3.*x + 2).^2'

% 4. saformēsim x kā vektoru
% x intervāls būs dots uzdevumā jau
% piemeram mums x pieder no -2 lidz 2
x = -2:0.01:2-0.01;
% šeit pierakstīts ka x pieder [-2;2)


% 5. ieliksim izteiksmē x un aprēķināsim y
y_n = ((x - 4).*(x - 5))./((x - 1).*(x - 2));
% vai
y_n = eval(y_vekt);
y_atv_n = eval(y_atv_vekt);

% 6. uzzīmēsim grafiku
plot(x,y_n,x,y_atv_n)
ylim([-100 100])
plot(x,y_n,x,y_atv_n)
ylim([-100 100])

% 7. grafiku anotācija
% izteiksmes "skaistā" attēlošana 
y_ltx = latex(y)

y_ltx =

    '\frac{\left(x-4\right)\,\left(x-5\right)}{\left(x-1\right)\,\left(x-2\right)}'

y_atv_ltx = latex(y_atv)

y_atv_ltx =

    '\frac{6\,\left(x^2-6\,x+7\right)}{{\left(x^2-3\,x+2\right)}^2}'

h = legend(['$,y_ltx',y_ltx,'$'],['$',y_atv_ltx,'$']);
[Warning: Error updating Legend.

 String scalar or character vector must have valid
 interpreter syntax:
$,y_ltx\frac{\left(x-4\right)\,\left(x-5\right)}{\left(x-1\right)\,\left(x-2\right)}$] 
[Warning: Error updating Legend.

 String scalar or character vector must have valid
 interpreter syntax:
$\frac{6\,\left(x^2-6\,x+7\right)}{{\left(x^2-3\,x+2\right)}^2}$] 
set(h,'Interpreter','Latex')
diary off

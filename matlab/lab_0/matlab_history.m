
	Classroom License -- for classroom instructional use only.

mkdir lab_0
cd lab_0/
ls
a = 1

a =

     1

b=2

b =

     2

c=a+b

c =

     3

A = [ 1 2; 3 4]

A =

     1     2
     3     4

B = [3 4; 5 6]

B =

     3     4
     5     6

A*B

ans =

    13    16
    29    36


A.*B

ans =

     3     8
    15    24

% Uzzīmēsim 2. kārtas polinomu
a*x^2+b*x+c
Undefined function or variable 'x'.
 
y=a*x^2+b*x+c
Undefined function or variable 'x'.
 
%polinoma koeficients a,b,c
%saglabāsim vektorā C
% y=a*x^2+b*x+c
C = [2 3 4];
C

C =

     2     3     4

y=
 y=
   ↑
Error: Invalid expression. Check for missing or extra characters.
 
%definēsim x

x = [-6 -4 -2 0 2 4 6]

x =

    -6    -4    -2     0     2     4     6

%vai arī to var pierakstīt šādi:
x = -6:2:6

x =

    -6    -4    -2     0     2     4     6

%tas nozīmē =       sākuma_elements:solis:beigu_elements
% aprēķināsim y
y= C(1)*x^2
Error using  ^ 
Incorrect dimensions for raising a matrix to a power. Check that the matrix is square and the power is a scalar. To perform
elementwise matrix powers, use '.^'.
 
y= C(1)*x^2+C(2)*x+c(3)
Error using  ^ 
Incorrect dimensions for raising a matrix to a power. Check that the matrix is square and the power is a scalar. To perform
elementwise matrix powers, use '.^'.
 
y= C(1)*x.^2+C(2)*x+c(3)
Index exceeds array bounds.
 
y = C(1)*x.^2+C(2)*x+c(3)
Index exceeds array bounds.
 
y = C(1)*x.^2+C(2)*x+c(3);
Index exceeds array bounds.
 
y = C(1)*x.^2+C(2)*x+c(3);
Index exceeds array bounds.
 
y = C(1)*x.^2+C(2)*x+c(3)
Index exceeds array bounds.
 
y = C(1)*x.^2+C(2)*x+C(3)

y =

    58    24     6     4    18    48    94

%zīmēsim grafiku
%zīmē ar plot
% sintakse : plot(x,y)
plot (x,y)
% ko darīt lai būtu lauzta līnija
% ir jāsamazina solis
x2 = -6:0.01:6;
plot (x,y)
y2 = C(1)*x2.^2+C(2)*x2+C(3);i n
plot (x2,y2)
% kā uzzīmēt vairākus grafikus
plot (x,y,x2,y2);
%kā mainīt līnijas izksatu
%izskatu*
plot (x,y,'o')

plot (x,y,'g')
plot (x,y,'--')
plot (x,y,'--go')
help plot
 plot   Linear plot. 
    plot(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    plot(Y) plots the columns of Y versus their index.
    If Y is complex, plot(Y) is equivalent to plot(real(Y),imag(Y)).
    In all other uses of plot, the imaginary part is ignored.
 
    Various line types, plot symbols and colors may be obtained with
    plot(X,Y,S) where S is a character string made from one element
    from any or all the following 3 columns:
 
           b     blue          .     point              -     solid
           g     green         o     circle             :     dotted
           r     red           x     x-mark             -.    dashdot 
           c     cyan          +     plus               --    dashed   
           m     magenta       *     star             (none)  no line
           y     yellow        s     square
           k     black         d     diamond
           w     white         v     triangle (down)
                               ^     triangle (up)
                               <     triangle (left)
                               >     triangle (right)
                               p     pentagram
                               h     hexagram
                          
    For example, plot(X,Y,'c+:') plots a cyan dotted line with a plus 
    at each data point; plot(X,Y,'bd') plots blue diamond at each data 
    point but does not draw any line.
 
    plot(X1,Y1,S1,X2,Y2,S2,X3,Y3,S3,...) combines the plots defined by
    the (X,Y,S) triples, where the X's and Y's are vectors or matrices 
    and the S's are strings.  
 
    For example, plot(X,Y,'y-',X,Y,'go') plots the data twice, with a
    solid yellow line interpolating green circles at the data points.
 
    The plot command, if no color is specified, makes automatic use of
    the colors specified by the axes ColorOrder property.  By default,
    plot cycles through the colors in the ColorOrder property.  For
    monochrome systems, plot cycles over the axes LineStyleOrder property.
 
    Note that RGB colors in the ColorOrder property may differ from
    similarly-named colors in the (X,Y,S) triples.  For example, the 
    second axes ColorOrder property is medium green with RGB [0 .5 0],
    while plot(X,Y,'g') plots a green line with RGB [0 1 0].
 
    If you do not specify a marker type, plot uses no marker. 
    If you do not specify a line style, plot uses a solid line.
 
    plot(AX,...) plots into the axes with handle AX.
 
    plot returns a column vector of handles to lineseries objects, one
    handle per plotted line. 
 
    The X,Y pairs, or X,Y,S triples, can be followed by 
    parameter/value pairs to specify additional properties 
    of the lines. For example, plot(X,Y,'LineWidth',2,'Color',[.6 0 0]) 
    will create a plot with a dark red line width of 2 points.
 
    Example
       x = -pi:pi/10:pi;
       y = tan(sin(x)) - sin(tan(x));
       plot(x,y,'--rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
 
    See also plottools, semilogx, semilogy, loglog, plotyy, plot3, grid,
    title, xlabel, ylabel, axis, axes, hold, legend, subplot, scatter.

    Reference page for plot
    Other functions named plot

plot (x,y,'kp')
plot (x,y,'--p')
plot (x,y,'k--p')
plot (x,y,'k--p','LineWidth'4)
 plot (x,y,'k--p','LineWidth'4)
                             ↑
Error: Invalid expression. Check for missing multiplication operator, missing or unbalanced
delimiters, or other syntax error. To construct matrices, use brackets instead of
parentheses.
 
plot (x,y,'k--p','LineWidth 4')
Error using plot
There is no k--p property on the Line class.
 
plot (x,y,'k--p')
plot (x,y,'k--p','LineWidth',4)
plot (x,y,'k--p','LineWidth',4,)
 plot (x,y,'k--p','LineWidth',4,)
                                ↑
Error: Invalid expression. When calling a function or indexing a variable, use parentheses.
Otherwise, check for mismatched delimiters.
 
plot (x,y,'k--p','LineWidth',4,'MarkerSize',4)
plot (x,y,'k--p','LineWidth',4,'MarkerSize',20)
plot (x,y,'r--p','LineWidth',4,'MarkerSize',20)
plot (x,y,'r--p','LineWidth',4,'MarkerSize',10)
plot (x,y,'r--p','LineWidth',4,'MarkerSize',15)
stem(x,y)
stem(x2,y2)
stem(x,y)
stairs(x,y)
stairs(x2,y2)
stairs(x,y)
% grafika īpašību maiņa
stairs(x,y)
mans_grafiks(x,y)
mans_grafiks(x2,y2)
close all
% aizvērt visus grafikus
% Kā zīmēt vairākus grafikus -2 variants
stairs(x,y)
hold on 
%iesaldē grafiku 
plot (x2,y2)
stem (x2,y2)
stairs(x,y)
stairs(x,y)
stairs(x,y)
stem (x2,y2)
stem (x2,y2)
stem (x2,y2)
plot (x2,y2)
hold off
steam (x,y)
Undefined function or variable 'steam'.
 
Did you mean:
stem (x,y)
% zīmēsim Lisažu figūras
% tālāko kodu rakstīsim Editorā
edit
help lisazu
  Skripts kas uzzīmē Lisāžu figūras
  27.01.2020
  autors students

lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu
lisazu_funkcija(1,2)
lisazu_funkcija(1,7)
lisazu_funkcija(1,3)
lisazu_funkcija(1,4)

lisazu_funk_anim(1,4)
lisazu_funk_anim(1,4)
lisazu_funk_anim(1,4)
lisazu_funk_anim(1,4)
lisazu_funk_anim(1,4)

lisazu_funk_anim(100,200)
lisazu_funk_anim(100,9000)
lisazu_funk_anim(1,9000)

lisazu_funk_anim(1,9000000)
lisazu_funk_anim(1,90000000000000)
lisazu_funk_anim(0.01,90000000000000)
lisazu_funk_anim(0.01,90000000)
lisazu_funk_anim(0.01,9000)
lisazu_funk_anim(0.01,90)

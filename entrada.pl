
menu:- write('****\n Gestor de operaciones****\n'),
    write('1 men� italiano'),nl,
    write('2 men� espa�ol'),nl,
    write('3 men� mexicano'),nl,
    write('4 men� frances'),nl,
    write('Seleccionar una opci�n (0 para salir): '), read(Option), ejecutar(Option).

ejecutar(Option):- Option==1,italiano,menu;
                   Option==2,espanol,menu;
                   Option==3,mexicano,menu;
                   Option==4,frances,menu;
                   Option==0,true.

italiano:-write('Sopa: Fetuccini \n'),
    write('Plato fuerte: Pizza napoletana\n'),
    write('Postre: Panna cotta \n').
espanol:-write('Sopa: Cocido madrile�o \n'),
    write('Plato fuerte: Gazpacho\n'),
    write('Postre: Natilla \n').
mexicano:-write('Sopa: Sopa de tortilla \n'),
    write('Plato fuerte: Tampique�a\n'),
    write('Postre: Arroz con leche \n').
frances:-write('Sopa: Sopa de cebolla \n'),
    write('Plato fuerte: Cassoulet\n'),
    write('Postre: �clair\n').

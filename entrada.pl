
menu:- write('****\n Gestor de operaciones****\n'),
    write('1 menú italiano'),nl,
    write('2 menú español'),nl,
    write('3 menú mexicano'),nl,
    write('4 menú frances'),nl,
    write('Seleccionar una opción (0 para salir): '), read(Option), ejecutar(Option).

ejecutar(Option):- Option==1,italiano,menu;
                   Option==2,espanol,menu;
                   Option==3,mexicano,menu;
                   Option==4,frances,menu;
                   Option==0,true.

italiano:-write('Sopa: Fetuccini \n'),
    write('Plato fuerte: Pizza napoletana\n'),
    write('Postre: Panna cotta \n').
espanol:-write('Sopa: Cocido madrileño \n'),
    write('Plato fuerte: Gazpacho\n'),
    write('Postre: Natilla \n').
mexicano:-write('Sopa: Sopa de tortilla \n'),
    write('Plato fuerte: Tampiqueña\n'),
    write('Postre: Arroz con leche \n').
frances:-write('Sopa: Sopa de cebolla \n'),
    write('Plato fuerte: Cassoulet\n'),
    write('Postre: Éclair\n').

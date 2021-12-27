%realizar un menu de familiares
%
:-dynamic(familia/2).
familia(pedro, [maria, juan]).
familia(josue, [roberto, marisol]).
familia(alex, [vladimir, dimitri]).

menu:-write('*****Gestor de familias*****\n'),
    write('1. Adicionar familia'),n1,
    write('2. Eliminar familia'),n1,
    write('3. Borrar todas las familias'),n1,
    write('4. listar familia'),n1,
    write('Seleccione una opcion (0 para salir): '),read(Opcion),ejecutar(Opcion).

ejecutar(Opcion) :- Opcion==1,adicionar,menu;
Opcion==2,eliminar,menu;
Opcion==3,borrar,menu;
Opcion==0,true.

adicionar:-write('nombre: '),read(Nombre),
    write('Cantidad de familiares: '),
    read(Cant), crearFamiliares(Cant, F),
    Fam=familia(Nombre,F),
    asserta(Fam).

crearFamiliares(0,[]):-!,true.
crearFamiliares(C,[Hijo|L]):-read(Hijo),Ctemp is C-1, crearFamiliares(Ctemp,L).

eliminar:-write('Nombre: '),read(Nombre),
    retract(familia(Nombre,_)),!.
eliminar:-write('No existe la persona \n').

borrar:- abolish(familia/2),
    write('Se han borrado todas las familias \n').

setof(resuesta, objetivo, lista)
setof(C,familia(P,H),member(C,H),L)

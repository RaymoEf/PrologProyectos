genero(masculino, [german,efren,daniel,arcadio,emilio,david, ismael, mario]).
genero(femenino, [gabriela, alejandra, gloria, isabel, silvia, carolina, elvira, adriana, andrea, mariana, mayte]).

progenitor(german, [efren,daniel,alejandra]).
progenitor(gabriela, [efren,daniel,alejandra]).
progenitor(reynaldo, [german, silvia, carolina, elvira]).
progenitor(isabel, [german, silvia, carolina, elvira]).
progenitor(arcadio, [gabriela, adriana, emilio, david]).
progenitor(gloria, [gabriela, adriana, emilio, david]).
progenitor(adriana, [ismael, andrea, mariana, mayte]).
progenitor(mario, [ismael, andrea, mariana, mayte]).

pareja(german,gabriela).
pareja(gabriela,german).
pareja(reynaldo,isabel).
pareja(isabel,reynaldo).
pareja(gloria,arcadio).
pareja(arcadio,gloria).
pareja(adriana,mario).
pareja(mario,adriana).


padre(X,Y) :- progenitor(X, Hijos) , buscarHijo(Y, Hijos), genero(masculino, Padres), buscarPadre(X,Padres).
madre(X,Y) :- progenitor(X, Hijos) , buscarHijo(Y, Hijos), genero(femenino, Madres), buscarMadre(X,Madres).
buscarHijo(_,[]):-!,fail.
buscarHijo(Y,[Y|_]):-!,true.
buscarHijo(Y,[_|L]):-buscarHijo(Y,L).
buscarPadre(_,[]):-!,fail.
buscarPadre(X,[X|_]):-!,true.
buscarPadre(X,[_|L]):-buscarHijo(X,L).
buscarMadre(_,[]):-!,fail.
buscarMadre(X,[X|_]):-!,true.
buscarMadre(X,[_|L]):-buscarHijo(X,L).

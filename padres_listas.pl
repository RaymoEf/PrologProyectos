progenitor(pedro,[ana,ramon,alejandro,javier,josh,vilma,nicolas]).
progenitor(juan,[ben,pepe,josue,jesica,pavel,keith,kyle]).

padreDe(P,hijo) :- progenitor(P,hijos),buscar(Hijo,Hijos).
buscar(Hijo,[]) :-!,fail.
buscar(Hijo,[Hijo|Cola]):-true.
buscar(Hijo,[C|Cola]):-buscar(Hijo,Cola).

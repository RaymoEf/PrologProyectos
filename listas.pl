listar(L) :- Cabeza=1, Cola=[2,3,[3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9],4,5], L=[Cabeza | Cola].
cualesCabeza([C|_],C).
cualesCola([_|Cola],Cola).
quitardos([_,_|Cola],Cola).
dardos([E1,E2|_],E1,E2).

progenitor(pedro, [ana,jaime]).

primerhijo(Hijo,X) :- progenitor(X,[Hijo|_]).

ama(juan,ana).
ama(ana,miguel).
ama(luis,isabel).
ama(miguel,ana).
ama(laura,juan).
ama(isabel,luis).

mutuo(X,Y) :- ama(X,Y) , ama(Y,X).
no_correspondido(X) :-ama(X,_) , not(mutuo(X,_)).

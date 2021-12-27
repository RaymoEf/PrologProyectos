hombre(arthur).
hombre(bill).
hombre(louis).
hombre(teddy).
hombre(percy).
hombre(george).
hombre(fred).
hombre(harry).
hombre(james).
hombre(albus).
hombre(ron).
hombre(hugo).

mujer(holly).
mujer(fleur).
mujer(victoire).
mujer(dominique).
mujer(audrey).
mujer(lucy).
mujer(molly).
mujer(angelina).
mujer(roxanne).
mujer(ginny).
mujer(lily).
mujer(hermione).
mujer(rose).

progenitor(molly,bill).
progenitor(molly,percy).
progenitor(molly,george).
progenitor(molly,ginny).
progenitor(molly,ron).
progenitor(arthur,bill).
progenitor(arthur,percy).
progenitor(arthur,george).
progenitor(arthur,ginny).
progenitor(arthur,ron).
progenitor(bill,victoire).
progenitor(bill,dominique).
progenitor(bill,loise).
progenitor(fluer,victoire).
progenitor(fleur,dominique).
progenitor(fleur,loise).
progenitor(percy,lucy).
progenitor(percy,molly).
progenitor(audrey,lucy).
progenitor(audrey,molly).
progenitor(george,fred).
progenitor(george,roxanne).
progenitor(angelina,fred).
progenitor(angelina,roxanne).
progenitor(ginny,lily).
progenitor(ginny,james).
progenitor(ginny,albus).
progenitor(harry,lily).
progenitor(harry,james).
progenitor(harry,albus).
progenitor(ron,hugo).
progenitor(ron,rose).
progenitor(hermione,hugo).
progenitor(hermione,rose).

pareja(arthur,molly).
pareja(molly,arthut).
pareja(bill,fleur).
pareja(fleur,bill).
pareja(percy,audrey).
pareja(audrey,percy).
pareja(george,angelina).
pareja(angelina,george).
pareja(ginny,harry).
pareja(harry,ginny).
pareja(ron,hermione).
pareja(hermione,ron).
pareja(victoire,teddy).
pareja(teddy,victiore).

%reglas

padre(X,Y) :- hombre(X), progenitor(X,Y).
madre(X,Y) :- mujer(X) , progenitor(X,Y).
hermanos(X,Y) :- progenitor(Z,X) , progenitor(Z,Y).
hermano(X,Y) :- hombre(X) , hermanos(X,Y).
hermana(X,Y) :- mujer(X) , hermanos(X,Y).
esposo(X,Y) :- hombre(X) , pareja(X,Y).
esposa(X,Y) :- mujer(X) , pareja(X,Y).
suegro(X,Y) :- padre(X,Z), pareja(Y,Z).
suegra(X,Y) :- madre(X,Z), pareja(Y,Z).
yerno(X,Y) :- (suegro(Y,X) ; suegra(Y,X)) , hombre(X).
nuera(X,Y) :- suegro(Y,X) ; suegra(Y,X) , mujer(X).


masculino(german).
masculino(efren).
masculino(daniel).
masculino(arcadio).
masculino(reynaldo).
masculino(pedro).
masculino(alberto).
masculino(felipe).
masculino(emilio).
masculino(david).
femenino(gabriela).
femenino(alejandra).
femenino(gloria).
femenino(isabel).
femenino(carolinaR).
femenino(elvira).
femenino(silvia).
femenino(adriana).
femenino(claudia).
femenino(carolinaM).
femenino(mercedez).

padre(german,efren).
padre(german,daniel).
padre(german,alejandra).
padre(arcadio,emilio).
padre(arcadio,david).
padre(arcadio,adriana).
padre(arcadio,gabriela).
padre(arcadio,claudia).
padre(arcadio,carolinaM).
padre(arcadio,mercedez).
padre(reynaldo,alberto).
padre(reynaldo,german).
padre(reynaldo,pedro).
padre(reynaldo,felipe).
padre(reynaldo,carolinaR).
padre(reynaldo,elvira).
padre(reynaldo,silvia).

madre(gabriela,efren).
madre(gabriela,daniel).
madre(gabriela,alejandra).
madre(gloria,emilio).
madre(gloria,david).
madre(gloria,adriana).
madre(gloria,gabriela).
madre(gloria,claudia).
madre(gloria,carolinaM).
madre(gloria,mercedez).
madre(isabel,alberto).
madre(isabel,german).
madre(isabel,pedro).
madre(isabel,felipe).
madre(isabel,carolinaR).
madre(isabel,elvira).
madre(isabel,silvia).

padres(X,Y) :- madre(X,Y).
padres(X,Y) :- padre(X,Y).

abuelo(G,X) :- padres(G,P) , madre(P,X).
abuelo(G,X) :- padres(G,P) , padre(P,X).

hermano(X,Y) :- masculino(X) , padres(P,X) , padres(P,Y) , not(X=Y).
hermana(X,Y) :- femenino(X), padres(P,X) , padres(P,Y) , not(X=Y).

tio(U,X) :- madre(P,X) , hermano(U,P).
tio(U,X) :- padre(P,X) , hermano(U,P).

tia(U,X) :- madre(P,X) , hermana(U,P).
tia(U,X) :- padre(P,X) , hermana(U,P).

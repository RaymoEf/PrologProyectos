enfermo_de(manuel,gripe).
tiene_sintoma(alicia,cansancio).
tiene_sintoma(efren,fiebre).
tiene_sintoma(daniel,tos).
tiene_sintoma(ale,dolor_cabeza).
sintoma_de(fiebre,gripe).
sintoma_de(dolor_cabeza,influenza).
sintoma_de(tos,gripe).
sintoma_de(cansancio,anemia).
elimina(vitaminas,cansancio).
elimina(aspirinas,fiebre).
elimina(jarabe,tos).
enfermo_de(X,Y):-tiene_sintoma(X,Z),sintoma_de(Z,Y).
recetar_a(X,Y) :- enfermo_de(Y,A),alivia(X,A).
alivia(X,Y):-elimina(X,A),sintoma_de(A,Y).


cls :- write('\e[2J').

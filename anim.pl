
es(tweety,canario).
es(michifuz,gato).
es(fido,perro).
es(fliper,delfin).
es(cuchi,payaso).

es(felino,mamifero).
es(gato,felino).
es(perro,mamifero).
es(payaso,pez).
es(canario,ave).

puede(mamifero,caminar).
puede(ave,volar).
puede(pez,nadar).
puede(felino,correr).
puede(delfin,nadar).

puede(X,Y) :- es(X,Z),puede(Z,Y).

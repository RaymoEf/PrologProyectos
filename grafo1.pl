conexion(d,h,4).
conexion(d,i,2).
conexion(i,f,11).
conexion(h,f,9).
conexion(f,a,10).
conexion(f,g,10).
conexion(a,b,7).

%saber si un nodo tiene arista
aristas(X) :- conexion(X,_,_).

%determinar el costo de un nodo a otro con un intermedio
costo(Inicio, Destino, Intermedio, Costo) :- conexion(Inicio, Intermedio, C1) , conexion(Intermedio, Destino, C2),  Costo is C1+C2.

%saber si existe un camino entre dos nodos
camino(X,Y) :- conexion(X,Y,_).
camino(X,Y) :- conexion(X,Z,_),camino(Z,Y).

transporte(roma,20000).
transporte(londres,25000).
transporte(tunez,15000).
transporte(berlin,30000).
transporte(madrid,20000).

alojamiento(hotel,roma,25000).
alojamiento(hotel,londres,15000).
alojamiento(hotel,tunez,10000).
alojamiento(hotel,berlin,25000).
alojamiento(hotel,madrid,15000).

alojamiento(hostal,roma,15000).
alojamiento(hostal,londres,10000).
alojamiento(hostal,tunez,8000).
alojamiento(hostal,berlin,15000).
alojamiento(hostal,madrid,10000).

alojamiento(camping,roma,10000).
alojamiento(camping,londres,5000).
alojamiento(camping,tunez,5000).
alojamiento(camping,berlin,11000).
alojamiento(camping,madrid,5000).

viaje(W,X,Y,Z):-transporte(W,A),alojamiento(Y,W,C),B is C*X, Z is A+B.
cls :- write('\e[2J').




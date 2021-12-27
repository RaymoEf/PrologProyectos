esta(ana,mexico).
esta(cdmx,mexico).
esta(pedro,guanajuato).
esta(guanajuato,mexico).

esta(X,mexico) :- esta(X,Y) , esta(Y,mexico).


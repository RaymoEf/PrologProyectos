sintomas(resfriado, [fiebre_rara, dolor_de_cabeza_raro, malestares_generales_ligeros, sin_cansancio, congesti�n_nasal_com�n, estornudos_frecuentes, dolor_de_garganta_com�n, tos_com�n, dificultada_para_respirar_rara_vez]).

sintomas(gripe, [fiebre_moderada, dolor_de_cabeza_intenso, pocos_malestares_generales, cansancio_leve, poca_congesti�n_nasal, estornudos_frecuentes, dolor_de_garganta_com�n, tos_moderada, dificultad_para_respirar_rara_vez]).

sintomas(coronavirus, [mucha_fiebre, se_puede_presentar_dolor_de_cabeza, malestares_generales_moderados, fatiga_intensa, congesti�n_nasal, estornudos_frecuentes, dolor_de_garganta_moderado, tos_com�n, se_presenta_dificultad_para_respirar]).

paciente(juan,[dolor_de_cabeza_intenso, fiebre_moderada, dolor_de_garganta, tos_moderada]).

diagnostico(X,Y) :-  paciente(X, SintomasP), sintomas(Y, SintomasE), buscarSintoma(SintomasP, SintomasE).
buscarSintoma(_,[]):-!,fail.
buscarSintoma(Y,[Y|_]):-!,true.
buscarSintoma(Y,[_|L]):-buscarSintoma(Y,L).



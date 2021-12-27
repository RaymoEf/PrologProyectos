es_un(animal,oviparo).
es_un(animal,viviparo).
es_un(animal,ave).
es_un(animal,mamifero).

es_un(ave,avestruz).
es_un(ave,albatros).
es_un(mamifero,ballena).
es_un(mamifero,tigre).
es_un(mamifero,conejo).
es_un(mamifero,leon).
es_un(oviparo,avestruz).
es_un(oviparo,albatros).
es_un(oviparo,pollito).
es_un(oviparo,serpiente).
es_un(viviparo,conejo).
es_un(viviparo,leon).

puede(respirar,animal).

atributo(ave,vuela,bien).
atributo(ave,tiene,plumas).
atributo(ave,pone,huevos).

atributo(mamifero,tiene,pelo).
atributo(mamifero,da,leche).

atributo(oviparo,pone,huevos).
atributo(viviparo,nace,embrion).

atributo(avestruz,patas,largas).
atributo(avestruz,vuela,no_puede).
atributo(albatros,vuela,muy_bien).

atributo(ballena,tiene,piel).
atributo(tigre,come,carne).

atributo(pollito,vuela,mal).
atributo(pollito,tiene,plumas).
atributo(serpiente,muda,piel).
atributo(serpiente,es,depredador).

atributo(conejo,salta,bien).
atributo(conejo,tiene,pelo).
atributo(leon,es,depredador).
atributo(leon,tiene,pelo).

cls :- write('\e[2J').


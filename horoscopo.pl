/*horoscopo(Signo,DiaIni,MesIni,DiaFin,MesFin)
 * <-son del signo Signo los nacidos entre el DiaIni/MesIni y l
 * DiaFi/MesFin */
 horoscopo(aries,22,3,21,4).
 horoscopo(tauro,22,4,21,5).
 horoscopo(geminis,22,5,21,6).
 horoscopo(cancer,22,6,21,7).
 horoscopo(leo,22,7,21,8).
 horoscopo(virgo,22,8,21,9).
 horoscopo(libra,22,9,21,10).
 horoscopo(escorpion,22,10,21,11).
 horoscopo(sagitario,22,11,21,12).
 horoscopo(capricornio,22,12,21,1).
 horoscopo(acuario,22,1,22,2).
 horoscopo(piscis,22,2,21,3).
/*signo(Dia,Mes,Signo)<- los nacidos el Dia/Mes pertenecen al signo Signo*/
/*signo(Dia,Mes,Signo) :- horoscopo(Signo,D1,M1,D2,M2),
    (   (Mes=M1, Dia>=D1) ; (Mes=M2,Dia=<D2)).
*/


/* mes(Mes,Dias,Nombre) <- el mes Nombre, de número Mes tiene Dias */

mes(1,31,enero).
mes(2,28,febrero).
mes(3,31,marzo).
mes(4,30,abril).
mes(5,31,mayo).
mes(6,30,junio).
mes(7,31,julio).
mes(8,31,agosto).
mes(9,30,septiembre).
mes(10,31,octubre).
mes(11,30,noviembre).
mes(12,31,diciembre).

signo(Dia,Mes,Signo):- horoscopo(Signo,D1,M1,D2,M2),
    ((Mes=M1, Dia>=D1,mes(M1,D,_),Dia=<D);
    (Mes=M2,Dia=<D2, Dia>0)).

cls :- write('\e[2J').


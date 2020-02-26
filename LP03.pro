program :- read(X), jumlah(X,Z), write(Z), nl.
	jumlah(X,X) :- X<10.
	jumlah(X,Y) :- X>=10, Sisa is X mod 10, Hasil is X div 10, jumlah(Hasil,Y1), Y is Sisa+Y1.
:- program.
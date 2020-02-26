program:- read(X), cek(X,0,2), nl.
	cek(1,_,_):- write(0).
	cek(X,K,Div):- Div =\= X, X1 is X mod Div, X1 =\= 0, Div1 is Div + 1, cek(X,K,Div1).
	cek(X,_,Div):- Div =\= X, X1 is X mod Div, X1 == 0, write(0).
	cek(X,K,X):- K == 0 -> write(1); write(0).
:-program.
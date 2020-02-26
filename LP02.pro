program :- read(A), read(B), read(C), hitung(A,B,C,X), write(X), nl.
	hitung(A,B,C,X) :- C =\= 0 -> X is A + B + C; X is A*B.
:- program.
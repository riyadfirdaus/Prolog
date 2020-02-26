program:-read(A), read(B), fpb(A,B), nl.
	fpb(A,B):-B=\=0, X is A mod B, fpb(B,X).
	fpb(A,B):-B==0, write(A).
:- program.
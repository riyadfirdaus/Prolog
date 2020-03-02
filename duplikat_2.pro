program:- read(List), read(X), duplikat(List,X,L), write(L), nl.
duplikat([H|T], X, Hasil):- urai(H,X,Hasil1), duplikat(T,X,Hasil2), append(Hasil1,Hasil2,Hasil).
duplikat([],_,[]).

urai(_,0,[]).
urai(H,X,[H|T]):- X>0, \+ is_list(H), X1 is X - 1, urai(H,X1,T).
:- program.
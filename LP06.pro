program :- read(A), read(List), jumlah(A,List,N), write(N), nl.
	jumlah(A,[],0)      :- !.
	jumlah(A,[P|Q],X)   :- P mod A =:= 0, jumlah(A,Q,Y), X is Y+1.
	jumlah(A,[P|Q],X)   :- jumlah(A,Q,X).
:- program.
numeral(0).
numeral(s(X)) :- numeral(X).

add(0,X,X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

numeral(X+Y) :- numeral(X), numeral(Y).

add2(X+Y, P, Z) :- add(X,Y,A), add(A, P, Z).
add2(P, X+Y, Z) :- add2(X+Y, P, Z).
add2(X+Y, P+Q, Z) :- add2(X+Y, 0, A), add2(P+Q, 0, B), add(A,B,Z).
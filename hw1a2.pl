numeral(0).
numeral(s(X)) :- numeral(X).

add(0,X,X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

eval(0, 0).
eval(s(X), s(Y)) :- eval(X,Y).
eval(X+Y, Z) :- add2(X, Y, Z).

add2(0, Y, Z) :- eval(Y, Z).
add2(s(X), Y, Z) :- add2(X, Y, Z).
add2(X+Y, B, Z) :- add2(X, Y, A), add2(A, B, Z).
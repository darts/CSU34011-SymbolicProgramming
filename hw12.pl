numeral(0).
numeral(s(X)) :- numeral(X).
numeral(X+Y) :- numeral(X), numeral(Y).
numeral(p(X)) :- numeral(X).

add(0,X,X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

% Exercise 1
add2(X+Y, P+Q, Z) :- add(X, Y, A), add(P, Q, B), add(A, B, Z).
add2(X, s(Y), Z) :- add2(X, Y, A), add(A, s(0), Z).
add2(s(X), Y, Z) :- add2(Y, s(X), Z).
add2(X+Y, P, Z) :- add(X, Y, A), add(A, P, Z).
add2(P, X+Y, Z) :- add2(X+Y, P, Z).

% Exercise 2
add2(p(s(X)), Y, Z) :- add2(X, Y, Z).
add2(Y, s(p(X)), Z) :- add2(X, Y, Z).
add2(p(X)+s(Y), P, Z) :- add2(X, Y, A), add2(A, P, Z).
add2(s(X)+p(Y), P, Z) :- add2(X, Y, A), add2(A, P, Z).
add2(X, Y, Z) :- add(X, Y, Z).
add2(p(X), Y, p(Z)) :- add2(X,Y,Z).

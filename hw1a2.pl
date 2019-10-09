eval(0, 0).
eval(p(s(X)), Y) :- eval(X,Y).
eval(s(p(X)), Y) :- eval(X,Y).
eval(s(X), s(Y)) :- eval(X,Y).
eval(p(X), p(Y)) :- eval(X,Y).
eval(X+Y, Z) :- add2(X, Y, Z).

add2(0, Y, Z) :- eval(Y, Z).
add2(p(s(X)), Y, Z) :- add2(X, Y, Z).
add2(p(s(X)), Y, Z) :- add2(X, Y, Z).
add2(s(X), Y, s(Z)) :- add2(X, Y, Z).
add2(p(X), Y, p(Z)) :- add2(X, Y, Z).
add2(X+Y, B, Z) :- add2(X, Y, A), add2(A, B, Z).

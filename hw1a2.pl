eval(0, 0).
eval(p(s(X)), Y) :- eval(X,Y).
eval(s(p(X)), Y) :- eval(X,Y).
eval(s(X), s(Y)) :- eval(X,Y).
eval(p(X), p(Y)) :- eval(X,Y).
eval(X+Y, Z) :- add2(X, Y, Z).
eval(X-Y, Z) :- subtract(X, Y, Z). %ex6



add2(0, Y, Z) :- eval(Y, Z).
add2(p(s(X)), Y, Z) :- add2(X, Y, Z).
add2(s(p(X)), Y, Z) :- add2(X, Y, Z).
add2(s(X), Y, s(Z)) :- add2(X, Y, Z).
add2(p(X), Y, p(Z)) :- add2(X, Y, Z).
add2(s(X), p(Y), Z) :- add2(X, Y, Z).
add2(p(X), s(Y), Z) :- add2(X, Y, Z).
add2(X+Y, B, Z) :- add2(X, Y, A), add2(A, B, Z).
add2(-X, Y, Z) :- minus(X, A), add2(A, Y, Z).
add2(X, -Y, Z) :- minus(Y, A), add2(X, A, Z).
add2(X-Y, A, Z) :- subtract(X, Y, B), add2(B,A,Z). %ex6


minus(0,0).
minus(-X, X).
minus(X+Y, Z) :- add2(X,Y,A), minus(A, Z).
minus(s(p(X)), Z) :- minus(X,Z).
minus(p(s(X)), Z) :- minus(X,Z).
minus(s(X), p(Y)) :- minus(X,Y).
minus(p(X), s(Y)) :- minus(X,Y).
minus(X-Y, Z) :- subtract(X, Y, A), minus(A,Z).


subtract(X, Y, Z) :- minus(Y, A), add2(X, A, Z). %ex5



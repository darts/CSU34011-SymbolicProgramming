% suppress warnings **
:- discontiguous add2/3.
:- discontiguous minus/2.
% suppress warnings **


numeral(0).
numeral(s(X)) :- numeral(X).
numeral(X+Y) :- numeral(X), numeral(Y).
numeral(p(X)) :- numeral(X).
numeral(-X) :- numeral(X).
numeral(X-Y) :- numeral(X), numeral(Y).

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
add2(p(X), s(Y), Z) :- add2(X,Y,Z).
add2(X, Y, Z) :- add(X, Y, Z).
add2(p(X), Y, p(Z)) :- add2(X,Y,Z).

% Exercise 3
minus(0, 0).
minus(s(X), p(Z)) :- minus(X,Z).
minus(s(p(X)), Z) :- minus(X, Z).
minus(p(s(X)), Z) :- minus(X, Z).
minus(p(X), s(Z)) :- minus(X,Z).

% Exercise 4
add2(-X, Y, Z) :- minus(X, Xminus), add2(Xminus, Y, Z).
% add2(-X, Y, Z) :- add2(X, 0, A), minus(A, Xminus), add2(Xminus, Y, Z).


% Exercise 5
subtract(X, Y, Z) :- minus(Y, Yminus), add2(X, Yminus, Z).
minus(-X, Z) :- add2(X, 0, Z).

% Exercise 6
add2(X-Y, P, Z) :- subtract(X,Y,A), add2(A, P, Z).
minus(X-Y, Z) :- add2(X-Y, 0, A), minus(A, Z).

% possible alt.
% minus(X-Y, Z) :- subtract(X, Y, A), minus(A, Z).

% minus(X+Y, Z) :- add2(X, Y, A), minus(A,Z). 

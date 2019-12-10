q(a).
q(X):-X=b, !.
q(c).

bird("can").
bird("bob").
penguin("can").

fly(X) :- bird(X), \+ penguin(X).

% subList(_, 0, 0, _).
% subList([A|AS], Begin, End, L) :- Begin > 0, B is Begin-1, C is End-1, subList(AS, B, C, L); E is End-1, subL(AS, 0, E, A), reverse(A, L).
% subL(_, 0, 0, _).
% subL([A|AS], 0, End, L) :- 0 =\= End-1, E is End-1, subL(AS, 0, E, [A|L]); 1=1.
getFirst([L|_], [L|[]]).
subL([L|LS], B, E, R) :- B1 is B, B1 > 0, subL(LS, B1-1, E-1, R),!; ssubL([L|LS], 0, E-1, R).
ssubL([L|LS], 0, E, [L|X]) :- 0 =:= E, getFirst(LS, X); ssubL(LS, 0, E-1, X).

:- dynamic harmonic/2.
harmonic(1, 1):-!.
harmonic(N, H) :- N1 is N-1, harmonic(N1, H1), H is H1 + 1/N, asserta(harmonic(N, H):-!), !.

member(X, [X|_]). 
member(X, [_|XS]) :- member(X, XS).
nonmember(X, [Y]) :- \+member(X, [Y]).

memb(X, [_|T]):- memb(X, T).
memb(X, [X|_]).

% subl(_, 0, 0, []).
% subl([L|LS], 0, E, [L|R]) :- E1 is E-1, subl(LS, 0, E1, R).
% subl([L|LS], B, E, R) :- B1 is B-1, B1 > 0, E1 is E-1, subl(LS, B1, E1, R).

% harmonic(1,1).
% harmonic(N, H) :- N1 is N-1,

add(0, 0, _).
add(succ(X), Y, succ(Z)) :- add(X, Y, Z).


edge(a, b).
edge(b, c).

symEdge(X, Y) :- edge(X, Y); edge(Y, X).

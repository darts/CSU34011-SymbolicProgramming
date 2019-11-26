% --- Q1 ---
s --> left(TwoZeros), two, right(OneOne), {TwoZeros is OneOne+OneOne}.
two --> [2]. %two is 2
left(0) --> [].
left(OneOne) --> [0], left(Short), {OneOne is Short+1}.
left(OneOne) --> [1], left(OneOne). %we can safely pad 1s on the left
right(0) --> [].
right(OneOne) --> [1], right(Short), {OneOne is Short+1}.
right(OneOne) --> [0], right(OneOne). %we can safely pad 0s on the right
% ---    ---

% --- Q2 ---
s2 --> house(Col1,Nat1,Pet1), house(Col2,Nat2,Pet2), house(Col3,Nat3,Pet3),
    {Col1 \== Col2}, {Col1 \== Col3}, {Col2 \== Col3}, %don't duplicate (mild irony)
    {Nat1 \== Nat2}, {Nat1 \== Nat3}, {Nat2 \== Nat3}, %don't duplicate (mild irony)
    {Pet1 \== Pet2}, {Pet1 \== Pet3}, {Pet2 \== Pet3}. %don't duplicate (mild irony)
house(Col, Nat, Pet) --> colour(Col), nationality(Nat), pet(Pet).

%assign the possible values
colour('red') --> [red].
colour('green') --> [green].
colour('blue') --> [blue].

nationality('english') --> [english].
nationality('spanish') --> [spanish].
nationality('japanese') --> [japanese].

pet('snail') --> [snail].
pet('jaguar') --> [jaguar].
pet('zebra') --> [zebra].
% ---    ---

% --- Q3 ---
mkList(0, []).
mkList(Num, [Num|List]) :- Temp is Num-1, Num > 0, mkList(Temp, List).

s(0) --> [].
s(Num) --> {mkList(Num, List)}, [Temp], {member(Temp, List)}, {Remainder is Num-Temp}, s(Remainder).

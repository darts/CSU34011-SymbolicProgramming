s --> left(TwoZeros), two, right(OneOne), {TwoZeros is OneOne+OneOne}.
two --> [2].
left(0) --> [].
left(OneOne) --> [0], left(Short), {OneOne is Short+1}.
left(OneOne) --> [1], left(OneOne).
right(0) --> [].
right(OneOne) --> [1], right(Short), {OneOne is Short+1}.
right(OneOne) --> [0], right(OneOne).   
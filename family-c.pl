
% PART (c) - ADVANCED RELATIONSHIPS
% Add this to family_b.pl or load separately


% GRANDPARENTS
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
grandfather(X, Y) :- grandparent(X, Y), male(X).
grandmother(X, Y) :- grandparent(X, Y), female(X).

% GRANDCHILDREN
grandchild(X, Y) :- grandparent(Y, X).

% UNCLES
uncle(X, Y) :- parent(P, Y), sibling(X, P), male(X).

% AUNTS
aunt(X, Y) :- parent(P, Y), sibling(X, P), female(X).

% COUSINS
cousin(X, Y) :-
    grandparent(GP, X),
    grandparent(GP, Y),
    X \= Y,
    \+ sibling(X, Y).

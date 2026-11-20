% Facts
man(marcus).
pompeian(marcus).
ruler(caesar).

% Rules
roman(X) :-
    pompeian(X).

person(X) :-
    man(X).

tries_to_assassinate(marcus, caesar).

% Statement 7
not_loyal(X, Y) :-
    person(X),
    ruler(Y),
    tries_to_assassinate(X, Y).

% Statement 5
hates(X, caesar) :-
    roman(X),
    not_loyal(X, caesar).

loyal(X, caesar) :-
    roman(X),
    \+ not_loyal(X, caesar).
bird(sparrow).
bird(eagle).
bird(pigeon).
bird(penguin).
bird(ostrich).

can_fly(Bird) :-
    bird(Bird),
    Bird \= penguin,
    Bird \= ostrich.

cannot_fly(Bird) :-
    bird(Bird),
    (Bird = penguin ; Bird = ostrich).
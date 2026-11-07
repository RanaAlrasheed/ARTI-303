% ARTI 303 - Lab 7
 
% Task 1
deleteElement(_, [], []).
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).
deleteElement(X, [Head|Tail], [Head|Result]) :-
    X \= Head,
    deleteElement(X, Tail, Result).
 
% Task 2
add_at_the_end(X, L, Result) :-
    append(L, [X], Result).


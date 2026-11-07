% ARTI 303 - Lab 7

start :-
    retractall(basket(_)),
    assert(basket([coffee, milk, chocolate, apple, juice])),
    menu.

menu :-
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(X),
    choice(X).

choice(d) :-
    basket(List),
    show_items(List),
    menu.

choice(a) :-
    write('enter the item you want to add it'), nl,
    read(Item),
    basket(List),
    append(List, [Item], NewList),
    retract(basket(List)),
    assert(basket(NewList)),
    write('The item has been added'), nl,
    menu.

choice(e) :-
    fin.

choice(_) :-
    nl, write('Sorry, you chose the wrong option...'), nl, nl,
    menu.

show_items([]).
show_items([Head|Tail]) :-
    write(Head), nl,
    show_items(Tail).

fin :-
    nl, write('===< End >==='), nl.

% ARTI 401 - Lab 11

:- dynamic letter/1.

start :-
    retractall(letter(_)),
    assertz(letter(a)),
    assertz(letter(b)),
    assertz(letter(c)),
    write('Hi. This is the "Name Game".'), nl,
    write('You will be given a set of English letters in which you will add, delete or move to create your name.'), nl,
    menu.

menu :-
    nl,
    write('Choose from the following:'), nl,
    write('1- Display the current set of letters'), nl,
    write('2- Add a letter'), nl,
    write('3- Add a letter at the top'), nl,
    write('4- Add a letter at the bottom'), nl,
    write('5- Delete a letter'), nl,
    write('6- Delete all letters'), nl,
    write('7- Exit'), nl,
    write('Enter your choice....'), nl,
    read(X),
    choice(X).

choice(1) :- !,
    show_letters,
    menu.

choice(2) :- !,
    write('Enter the letter:'), nl,
    read(X),
    assert(letter(X)),
    menu.

choice(3) :- !,
    write('Enter the letter:'), nl,
    read(X),
    asserta(letter(X)),
    menu.

choice(4) :- !,
    write('Enter the letter:'), nl,
    read(X),
    assertz(letter(X)),
    menu.

choice(5) :- !,
    write('Enter the letter you want to delete:'), nl,
    read(X),
    delete_letter(X),
    menu.

choice(6) :- !,
    retractall(letter(_)),
    write('All letters have been deleted.'), nl,
    menu.

choice(7) :- !,
    write('Goodbye!'), nl.

choice(_) :-
    write('Sorry, you chose the wrong option.'), nl,
    menu.

show_letters :-
    letter(X),
    write(X), tab(1),
    fail.
show_letters :-
    nl.

delete_letter(X) :-
    retract(letter(X)), !.
delete_letter(_) :-
    write('This letter is not in the set.'), nl.

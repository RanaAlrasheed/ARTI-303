% ARTI 303 - Lab 8
 
% Task 2
sumlist([], 0).
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, TailSum),
    Sum is Head + TailSum.
 
% Task 3
total_average :-
    write('Enter the first number: '), nl, read(A),
    write('Enter the second number: '), nl, read(B),
    write('Enter the third number: '), nl, read(C),
    Total is A + B + C,
    Average is Total / 3,
    write('Total = '), write(Total), nl,
    write('Average = '), write(Average), nl.


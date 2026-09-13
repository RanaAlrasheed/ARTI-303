male(shaker).
male(waleed).
male(khalid).
male(abdullah).

female(aljawhara).
female(seham).
female(rana).
female(reem).
female(ghaim).

parent(aljawhara, seham).
parent(shaker, seham).
parent(seham, rana).
parent(seham, reem).
parent(seham, khalid).
parent(seham, abdullah).
parent(waleed, rana).
parent(waleed, reem).
parent(waleed, khalid).
parent(waleed, abdullah).
parent(reem, ghaim).
 
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.


% ARTI 303 - Lab 5 - Working with Rules
% The Simpsons Family Tree

%facts
male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

parent(abraham, herb).
parent(abraham, homer).
parent(mona, homer).
parent(clancy, marge).
parent(jackie, marge).
parent(clancy, patty).
parent(jackie, patty).
parent(clancy, selma).
parent(jackie, selma).
parent(homer, bart).
parent(marge, bart).
parent(homer, lisa).
parent(marge, lisa).
parent(homer, maggie).
parent(marge, maggie).
parent(selma, ling).

%rules
father(F, X) :- parent(F, X), male(F).
mother(M, X) :- parent(M, X), female(M).
son(S, P) :- parent(P, S), male(S).
daughter(D, P) :- parent(P, D), female(D).
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X), X \= Y.
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), X \= Y.
grandfather(G, X) :- parent(G, P), parent(P, X), male(G).
aunt(A, X) :- parent(P, X), sister(A, P).
uncle(U, X) :- parent(P, X), brother(U, P).
cousin(X, Y) :- parent(P1, X), parent(P2, Y), parent(G, P1), parent(G, P2), P1 \= P2.
ancestor(A, X) :- parent(A, X).
ancestor(A, X) :- parent(P, X), ancestor(A, P).











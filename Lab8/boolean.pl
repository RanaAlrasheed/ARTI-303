% ARTI 303 - Lab 8
 
and(true,  true,  true).
and(true,  false, false).
and(false, true,  false).
and(false, false, false).
 
or(true,  true,  true).
or(true,  false, true).
or(false, true,  true).
or(false, false, false).
 
neg(true,  false).
neg(false, true).
 
% (A and B) or (not A and not B)
logicGate(A, B, O) :-
    and(A, B, X),
    neg(A, NA),
    neg(B, NB),
    and(NA, NB, Y),
    or(X, Y, O).
 

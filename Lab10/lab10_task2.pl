% ARTI 401 - Lab 10
% Task 2: login page (the user has 2 more attempts after the first one)
% Run:  ?- login.      (end every input with a full stop, e.g.  ahmed.  then  '1234'.)

user(ahmed,  '1234').
user(sara,   'abcd').
user(khalid, 'pass99').
user(noura,  'prolog').

login :-
    write('===== Login ====='), nl,
    attempt(1).

attempt(N) :-
    write('Username: '), read(U),
    write('Password: '), read(P),
    check(U, P, N).

check(U, P, _) :-
    user(U, P), !,
    write('Login Successful'), nl.

check(_, _, N) :-
    N < 3, !,
    write('Login Unsuccessful'), nl,
    N1 is N + 1,
    attempt(N1).

check(_, _, _) :-
    write('Login Unsuccessful'), nl,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

% ?- login.   then  ahmed.  '1234'.        -> Login Successful
% ?- login.   then  x. y.  sara. 'abcd'.   -> Login Unsuccessful, then Login Successful
% ?- login.   then  3 wrong tries          -> Sorry, you exceeded the maximum number of attempts...

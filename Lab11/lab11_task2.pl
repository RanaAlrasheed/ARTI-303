% Lab 11 - Task 2: How the Name Game works
%
% The program is in lab11_task1.pl. To run it: ?- start.
% Every input must end with a full stop, for example 1. or r.
%
% 1. Storing the letters
% Each letter is stored as a fact in the database, for example letter(a).
% The line ":- dynamic letter/1." allows the facts to be changed while the program runs.
% start removes any old letters with retractall and then adds a, b and c with assertz.
%
% 2. The menu
% menu prints the options, reads the choice with read(X), and calls choice(X).
% There is one choice clause for each number from 1 to 7.
% The cut (!) stops Prolog from trying the other clauses after the right one is chosen.
% After each action the clause calls menu again, so the game repeats until the user chooses 7.
% Any other number goes to the last clause, which prints "Sorry, you chose the wrong option."
%
% 3. The options
% 1 - Display: show_letters uses letter(X), writes X, and then fail to go back and
%     get the next letter. When there are no more letters, the second clause prints a new line.
% 2 - Add a letter: assert(letter(X)) adds the new letter.
% 3 - Add at the top: asserta(letter(X)) adds the letter as the first fact.
% 4 - Add at the bottom: assertz(letter(X)) adds the letter as the last fact.
% 5 - Delete a letter: retract(letter(X)) removes the first fact that matches.
%     If the letter is not there, retract fails and the program prints a message.
% 6 - Delete all letters: retractall(letter(_)) removes every letter fact.
% 7 - Exit: prints Goodbye and stops calling menu.
%
% 4. Moving a letter
% There is no separate option for moving. The user deletes the letter (option 5)
% and adds it again at the top (option 3) or at the bottom (option 4).

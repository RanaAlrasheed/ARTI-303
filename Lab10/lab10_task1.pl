% ARTI 401 - Lab 10
% Task 1: area and perimeter of a square, rectangle and triangle

area(square(Side), A)             :- A is Side * Side.
area(rectangle(Width, Height), A) :- A is Width * Height.
area(triangle(Base, Height), A)   :- A is 0.5 * Base * Height.

perimeter(square(Side), P)             :- P is 4 * Side.
perimeter(rectangle(Width, Height), P) :- P is 2 * (Width + Height).
perimeter(triangle(A, B, C), P)        :- P is A + B + C.

% ?- area(square(4), A).            % A = 16
% ?- perimeter(square(4), P).       % P = 16
% ?- area(rectangle(3, 5), A).      % A = 15
% ?- perimeter(rectangle(3, 5), P). % P = 16
% ?- area(triangle(6, 4), A).       % A = 12.0   (base 6, vertical height 4)
% ?- perimeter(triangle(5, 5, 6), P). % P = 16

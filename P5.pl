% Define the predicate for Towers of Hanoi
hanoi(1, Source, Target, _, [move(1, Source, Target)]) :-
    format('Move disk 1 from ~w to ~w~n', [Source, Target]).
hanoi(N, Source, Target, Auxiliary, Moves) :-
    N > 1,
    M is N - 1,
    hanoi(M, Source, Auxiliary, Target, Move1),
    hanoi(1, Source, Target, _, Move2),
    hanoi(M, Auxiliary, Target, Source, Move3),
    append(Move1, [Move2|Move3], Moves),
    print_moves(Moves).

% Print the sequence of moves
print_moves([]).
print_moves([move(Disk, Source, Target)|Rest]) :-
    format('Move disk ~w from ~w to ~w~n', [Disk, Source, Target]),
    print_moves(Rest).

% Example usage:
% To solve the Towers of Hanoi problem with 3 disks on pegs A, B, and C:
% ?- hanoi(3, 'A', 'C', 'B', Moves).

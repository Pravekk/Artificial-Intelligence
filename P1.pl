% Base case: Sum of integers from 1 to 1 is 1.
sum_integers(1, 1).

% Recursive case: Sum integers from 1 to N as Sum is the sum of integers from 1 to N-1 plus N.
sum_integers(N, Sum) :-
    N > 1,
    N1 is N - 1,
    sum_integers(N1, Sum1),
    Sum is Sum1 + N.

% Example usage:
% To find the sum of integers from 1 to 5:
% ?- sum_integers(5, Result).
% Result = 15.

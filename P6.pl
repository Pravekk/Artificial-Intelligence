% Facts
can_fly(sparrow).
can_fly(eagle).
can_fly(penguin).

% Rules
cannot_fly(ostrich).

% Queries
% Example query: Can a sparrow fly?
% Query: can_fly(sparrow).
% Example query: Can an ostrich fly?
% Query: cannot_fly(ostrich).

% Query to print all birds and whether they can fly or not
% Query: can_fly(Bird), write(Bird), write(' can fly.'), nl, fail.
% The 'fail' at the end is used to force backtracking, which allows Prolog to find multiple solutions.


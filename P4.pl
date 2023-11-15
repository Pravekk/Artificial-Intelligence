% Facts about planets
planet(mercury, rocky, 57.9).
planet(venus, rocky, 108.2).
planet(earth, rocky, 149.6).
planet(mars, rocky, 227.9).
planet(jupiter, gas_giant, 778.5).
planet(saturn, gas_giant, 1433.5).
planet(uranus, ice_giant, 2872.5).
planet(neptune, ice_giant, 4495.1).

% Rules to query the database
distance_closer_than(Planet1, Planet2, Distance) :-
    planet(Planet1, _, Distance1),
    planet(Planet2, _, Distance2),
    Distance1 < Distance2,
    Distance2 - Distance1 < Distance.

type_of_planet(Planet, Type) :-
    planet(Planet, Type, _).

% Example queries
% Is Mars a rocky planet?
% ?- type_of_planet(mars, Type).
%
% What Planets are closer to the sun than Earth within a distance of 50 units?
% ?- distance_closer_than(Planet, earth, 50).

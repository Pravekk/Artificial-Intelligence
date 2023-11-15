% Facts representing the database with names and dates of birth
dob(john, '1990-05-15').
dob(susan, '1985-12-02').
dob(mike, '1995-08-20').
dob(lisa, '1978-03-10').

% Query to retrieve the date of birth for a given person
get_dob(Person, DateOfBirth) :-
    dob(Person, DateOfBirth).

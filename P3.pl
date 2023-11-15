% Facts
student(john).
student(susan).
student(mike).

teacher(prof_smith).
teacher(prof_jones).

subject(math, m101).
subject(english, e102).
subject(history, h103).

% Relationships
teaches(prof_smith, math).
teaches(prof_jones, english).

enrolled(john, m101).
enrolled(susan, e102).
enrolled(mike, h103).

% Rules
takes_subject(Student, Subject) :- enrolled(Student, Code), subject(Subject, Code).
has_teacher(Subject, Teacher) :- teaches(Teacher, Subject).

% Example Queries
% Who teaches the subject with code m101?
% ?- has_teacher(math, Teacher).

% What subjects is John enrolled in?
% ?- takes_subject(john, Subject).

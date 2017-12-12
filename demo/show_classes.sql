\echo We want to see which classes user 8 is in.
\echo Using Query:
\echo SELECT id, name FROM classes INNER JOIN user_classes ON class_id = id WHERE user_id = 8;
SELECT id, name FROM classes INNER JOIN user_classes ON class_id = id WHERE user_id = 8;
\echo We want to see which users user 5 has blocked.
\echo Using Query:
\echo
SELECT id, last_name, first_name FROM users INNER JOIN blocks ON blocked_user_id = id WHERE user_id = 5;
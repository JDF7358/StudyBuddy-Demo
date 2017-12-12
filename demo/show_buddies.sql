\echo We want to see which users user 5 is buddies with.
\echo Using Query:
\echo SELECT id, last_name, first_name FROM users INNER JOIN buddies ON user1_id = id OR user2_id = id WHERE (user1_id = 5 OR user2_id = 5) AND NOT id = 5;
SELECT id, last_name, first_name FROM users INNER JOIN buddies ON user1_id = id OR user2_id = id WHERE (user1_id = 5 OR user2_id = 5) AND NOT id = 5;
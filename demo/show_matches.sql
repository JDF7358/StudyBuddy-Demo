\echo We want to see which users user 1 has been matched with.
\echo Using Query:
\echo SELECT id, last_name, first_name FROM users INNER JOIN matches ON user1_id = id OR user2_id = id WHERE (user1_id = 1 OR user2_id = 1) AND NOT id = 1;
SELECT id, last_name, first_name FROM users INNER JOIN matches ON user1_id = id OR user2_id = id WHERE (user1_id = 1 OR user2_id = 1) AND NOT id = 1;
\echo Original Table:
SELECT * FROM matches;
\echo User 1 has been matched with user 10 with query:
\echo INSERT INTO matches VALUES (1,10);
INSERT INTO matches VALUES (1,10);
\echo Updated Table:
SELECT * FROM matches;
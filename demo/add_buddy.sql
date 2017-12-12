\echo Original Table:
SELECT * FROM buddies;
\echo User 5 has become buddies with user 6 with query:
\echo INSERT INTO buddies VALUES (5,6);
INSERT INTO buddies VALUES (5,6);
\echo Updated Table:
SELECT * FROM buddies;
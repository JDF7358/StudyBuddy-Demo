\echo Original Table:
SELECT * FROM blocks;
\echo User 5 is blocking user 1 with query:
\echo INSERT INTO blocks VALUES (5,1);
INSERT INTO blocks VALUES (5,1);
\echo Updated Table:
SELECT * FROM blocks;
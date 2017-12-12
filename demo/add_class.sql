\echo Original Table:
SELECT * FROM user_classes;
\echo User 8 has registered for class 10 with query:
\echo INSERT INTO user_classes VALUES (8,10);
INSERT INTO user_classes VALUES (8,10);
\echo Updated Table:
SELECT * FROM user_classes;
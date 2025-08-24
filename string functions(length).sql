SELECT name, LENGTH(name) AS name_length
FROM students;

SELECT name, LENGTH(name) AS name_length
FROM students
WHERE LENGTH(name) < 5;

SELECT name, LENGTH(name) AS name_length
FROM students
ORDER BY LENGTH(name) DESC;

SELECT TOP 1 name, LEN(name) AS name_length
FROM students
ORDER BY LEN(name) DESC;

SELECT name, LEN(name) AS name_length
FROM students;

SELECT name, LENGTH(name) AS name_length
FROM students
WHERE LENGTH(name) = 7;

SELECT MAX(LENGTH(name)) AS max_length,
       MIN(LENGTH(name)) AS min_length
FROM students;

(
  SELECT name, LENGTH(name) AS name_length
  FROM students
  WHERE LENGTH(name) = (SELECT MAX(LENGTH(name)) FROM students)
)
UNION
(
  SELECT name, LENGTH(name) AS name_length
  FROM students
  WHERE LENGTH(name) = (SELECT MIN(LENGTH(name)) FROM students)
);
SELECT name, LENGTH(name) AS name_length
FROM students
WHERE LENGTH(name) > (SELECT AVG(LENGTH(name)) FROM students);




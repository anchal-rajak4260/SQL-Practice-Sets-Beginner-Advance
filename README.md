# SQL-Practice-Sets-Beginner-Advance

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:


  | STATION |       |
  |---------|-------|
  | Fied | Type |
  | ID  | NUMBER |
  | CITY | VARCHAR2(21) |
  | STATE | VARCHAR2(2) |
  | LAT_N |NUMBER |
  | LONG_W | NUMBER |

  ---

  ```sql

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'A%'
   OR CITY LIKE 'E%'
   OR CITY LIKE 'I%'
   OR CITY LIKE 'O%'
   OR CITY LIKE 'U%';

```

---

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

```sql

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%a'
   OR CITY LIKE '%e'
   OR CITY LIKE '%i'
   OR CITY LIKE '%o'
   OR CITY LIKE '%u';

```

---

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

```sql

SELECT DISTINCT CITY
FROM STATION
WHERE (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%')
  AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');

```

---

Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

```SQL

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%'
  AND CITY NOT LIKE 'E%'
  AND CITY NOT LIKE 'I%'
  AND CITY NOT LIKE 'O%'
  AND CITY NOT LIKE 'U%';

```

---

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

```SQL
 SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '%a'
  AND CITY NOT LIKE '%e'
  AND CITY NOT LIKE '%i'
  AND CITY NOT LIKE '%o'
  AND CITY NOT LIKE '%u';

```

---

Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE (CITY NOT LIKE 'A%' 
   AND CITY NOT LIKE 'E%' 
   AND CITY NOT LIKE 'I%' 
   AND CITY NOT LIKE 'O%' 
   AND CITY NOT LIKE 'U%')

   OR

      (CITY NOT LIKE '%a' 
   AND CITY NOT LIKE '%e' 
   AND CITY NOT LIKE '%i' 
   AND CITY NOT LIKE '%o' 
   AND CITY NOT LIKE '%u');
```
---

Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE (CITY NOT LIKE 'A%' 
   AND CITY NOT LIKE 'E%' 
   AND CITY NOT LIKE 'I%' 
   AND CITY NOT LIKE 'O%' 
   AND CITY NOT LIKE 'U%')

  AND

    (CITY NOT LIKE '%a' 
   AND CITY NOT LIKE '%e' 
   AND CITY NOT LIKE '%i' 
   AND CITY NOT LIKE '%o' 
   AND CITY NOT LIKE '%u');

 ```
---- 
Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Input Format

The STUDENTS table is described as follows:  The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

```SQL
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;
```
## Explanation:
SELECT Name → retrieves only the student names.

WHERE Marks > 75 → filters students who scored higher than the given threshold (replace 75 with the required value).

ORDER BY RIGHT(Name, 3) → sorts results by the last three characters of each name.

ID → ensures that if multiple names share the same last three characters, they are sorted by ascending student ID.

DISTINCT is not needed here because student names are unique per ID, but if duplicates exist, you can add it.

----

Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:

```SQL
SELECT name
FROM Employee
ORDER BY name;
```

----
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $ 2000  per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

Input Format

The Employee table containing employee data for a company is described as follows:

```sql
SELECT name
FROM Employee
WHERE salary > 2000
  AND months < 10
ORDER BY employee_id;
```

---

P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).

```sql
WITH RECURSIVE pattern(n) AS (
    SELECT 20
    UNION ALL
    SELECT n - 1
    FROM pattern
    WHERE n > 1
)
SELECT REPEAT('* ', n)
FROM pattern;

```
How it works:
WITH RECURSIVE pattern(n) → creates a sequence starting at 20 and counting down to 1.

SELECT 20 → initializes the recursion.

UNION ALL SELECT n - 1 ... → decrements until it reaches 1.

REPEAT('* ', n) → prints n stars separated by spaces for each row.


---------


P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).

```sql

WITH RECURSIVE pattern(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1
    FROM pattern
    WHERE n < 20
)
SELECT REPEAT('* ', n)
FROM pattern;
```
* 
* * 
* * * 
* * * * 
...
* * * * ... (20 stars)

---




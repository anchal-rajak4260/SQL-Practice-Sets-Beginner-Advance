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
Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

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







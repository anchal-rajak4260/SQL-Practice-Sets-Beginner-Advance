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

  ```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'A%'
   OR CITY LIKE 'E%'
   OR CITY LIKE 'I%'
   OR CITY LIKE 'O%'
   OR CITY LIKE 'U%';

  ```

  


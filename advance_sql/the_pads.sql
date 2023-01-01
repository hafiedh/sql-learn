
SELECT CONCAT(name, '(', SUBSTRING(occupation, 1, 1), ')') AS name FROM OCCUPATIONS ORDER BY name ASC;
SELECT CONCAT('There are a total of ', COUNT(name), ' ', LOWER(occupation), 's.') AS name FROM OCCUPATIONS GROUP BY occupation ORDER BY COUNT(name), LOWER(occupation);
/*
output:
   Ashely(P)
    Christeen(P)
    Jane(A)
    Jenny(D)
    Julia(A)
    Ketty(P)
    Maria(A)
    Meera(S)
    Priya(S)
    Samantha(D)
    There are a total of 2 doctors.
    There are a total of 2 singers.
    There are a total of 3 actors.
    There are a total of 3 professors.

    The results of the first query are formatted to the problem description's specifications.
The results of the second query are ascendingly ordered first by number of names corresponding to each profession (2<= 2 <= 3 <=3), and then alphabetically by profession (doctor <= singer, and actor <= professor).
*/




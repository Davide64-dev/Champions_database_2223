.mode columns
.headers on
.nullvalue NULL


SELECT ROUND(AVG(TOTAL), 3) AS "AVERAGE" FROM (

SELECT C.IDCLUB,C.NAME, COUNT(*) AS "TOTAL" FROM PLAYER P JOIN
CLUB C ON C.IDCLUB = P.IDCLUB GROUP BY C.IDCLUB
);
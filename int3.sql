.mode columns
.headers on
.nullvalue NULL


SELECT O.Name AS "Country" , COUNT(*)*100.0 / (SELECT COUNT(*) FROM CLUB) AS "Percentage"
 FROM CLUB C JOIN COUNTRY O ON O.IDCOUNTRY = C.IDCOUNTRY GROUP BY O.NAME
 ORDER BY PERCENTAGE DESC;
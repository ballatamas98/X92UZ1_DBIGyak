USE x92uz1;
SELECT  Auto.*
FROM Tulajdonos
INNER JOIN Auto ON Tulajdonos.tkod=Auto.tulaj Where Tulajdonos.varos='Miskolc';
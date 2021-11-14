USE x92uz1;
SELECT  Auto.rendszam
FROM Tulajdonos INNER JOIN Auto ON Tulajdonos.tkod=Auto.tulaj Where NOT Tulajdonos.varos='Miskolc' AND Auto.ar>(SELECT AVG(ar) FROM Auto INNER JOIN Tulajdonos ON Tulajdonos.tkod=Auto.tulaj Where Tulajdonos.varos='Miskolc');
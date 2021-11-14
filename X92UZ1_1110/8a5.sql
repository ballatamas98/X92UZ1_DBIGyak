USE x92uz1;
SELECT  Auto.rendszam, Tulajdonos.nev
FROM Tulajdonos
RIGHT JOIN Auto ON Tulajdonos.tkod=Auto.tulaj;
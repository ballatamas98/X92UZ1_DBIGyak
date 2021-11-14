USE x92uz1;
SELECT Tulajdonos.nev, Auto.rendszam
FROM Tulajdonos
INNER JOIN Auto ON Tulajdonos.tkod=Auto.tulaj;
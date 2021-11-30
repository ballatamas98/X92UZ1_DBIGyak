select * from Szemely;
select * from Vallalkozas;
select * from Auto;
select * from Telek;
select * from Eb;

select * from Auto LEFT JOIN Szemely ON Auto.tulajdonos = Szemely.szid;
select Szemely.vezeteknev, Szemely.keresztnev from Szemely RIGHT JOIN Eb ON EB.gazda = Szemely.szid ;
select Szemely.vezeteknev, Szemely.keresztnev, Telek.utca, Telek.hsz from Szemely JOIN Tulaj ON Tulaj.tulajdonos = Szemely.szid JOIN Telek ON Tulaj.hrsz = Telek.hrsz;
select COUNT(Eb.chip) from Eb  where Eb.fajta='Németjuhász';
select Szemely.vezeteknev, Szemely.keresztnev, Szemely_vallakozas.tartozas from Szemely JOIN Szemely_vallakozas ON Szemely.szid = Szemely_vallakozas.szid  ;
select Szemely.vezeteknev, Szemely.keresztnev, Telek.hrsz from Szemely JOIN Tulaj ON Tulaj.tulajdonos = Szemely.szid JOIN Telek ON Tulaj.hrsz = Telek.hrsz where Telek.terulet>(SELECT AVG(Telek.terulet) FROM Telek);
select COUNT(Auto.rendszam) from Auto JOIN Szemely ON Auto.tulajdonos = Szemely.szid   JOIN Tulaj ON Tulaj.tulajdonos = Szemely.szid  JOIN Telek ON Tulaj.hrsz = Telek.hrsz where Telek.utca like 'Iskola%';
select Telek.utca, Telek.hsz, Vallalkozas.vallakozas_neve from Vallalkozas JOIN Telek ON Vallalkozas.szekhely = Telek.hrsz JOIN Szemely_vallakozas ON Vallalkozas.uzemelteto = Szemely_vallakozas.szid where (Vallalkozas.bevetel>10000000 and Szemely_vallakozas.tartozas=false);
select Szemely.vezeteknev, Szemely.keresztnev from Szemely JOIN Vallalkozas ON Vallalkozas.uzemelteto = Szemely.szid where Vallalkozas.bevetel<(SELECT AVG(Vallalkozas.bevetel) FROM Vallalkozas);
select Szemely.vezeteknev, Szemely.keresztnev, COUNT(Auto.rendszam ) as DB_auto  from Szemely JOIN Vallalkozas ON Vallalkozas.uzemelteto = Szemely.szid JOIN Auto ON Auto.tulajdonos = Szemely.szid GROUP BY Szemely.szid ;
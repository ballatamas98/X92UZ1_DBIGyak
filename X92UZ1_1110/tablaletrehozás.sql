drop table Auto;
drop table Tulajdonos;

USE x92uz1;
CREATE TABLE Tulajdonos (tkod INT(3) PRIMARY KEY,
 nev VARCHAR(20) NOT NULL, varos VARCHAR(20));
 CREATE TABLE Auto (rendszam Char(7) PRIMARY KEY,
 tipus VARCHAR(25) NOT NULL,
 szin VARCHAR(15),
 kor INT(2),
 ar INT(8),
 tulaj INT(3),
FOREIGN KEY (tulaj)  REFERENCES Tulajdonos(tkod));
SELECT * FROM Tulajdonos;
SELECT * FROM Auto;
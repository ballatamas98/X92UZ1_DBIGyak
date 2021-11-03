DROP table gyarto;
DROP table termek;
CREATE TABLE gyarto (adoszam INT PRIMARY KEY,
nev VARCHAR(30) NOT NULL, varos VARCHAR(200));
CREATE TABLE termek (tkod INT PRIMARY KEY,
nev VARCHAR(50) NOT NULL, ear INT CHECK (EAR > 0),
kategória CHAR(10), gyarto INT REFERENCES GYARTO);


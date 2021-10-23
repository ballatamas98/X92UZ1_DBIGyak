CREATE DATABASE x92uz1;
CREATE TABLE GYARTO (
    adoszam int NOT NULL primary key,
    nev char(30) NOT NULL,
    telephely varchar(255),
    irsz char(4),
    varos char(40),
    utca char(100)
);
CREATE TABLE TERMEK (
    tkod int NOT NULL primary key,
    nev char(50) NOT NULL,
    ear int ,
	FOREIGN KEY (gyarto)
    REFERENCES GYARTO(adoszam)
);
CREATE TABLE Egysegek (
db int,
FOREIGN KEY (aru)
REFERENCES TERMek(tkod)
);
CREATE TABLE Alkatresz(
tkod int NOT NULL primary key,
nev char(30) NOT NULL
);
CREATE TABLE Komponens(
FOREIGN KEY (termek)
REFERENCES TERMEK(tkod),
FOREIGN KEY (alkatresz)
    REFERENCES Alketresz(akod)
);
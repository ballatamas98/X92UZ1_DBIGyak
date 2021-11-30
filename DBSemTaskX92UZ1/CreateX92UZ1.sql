drop database x92uz1;
create database x92uz1;
use x92uz1;


CREATE TABLE Szemely (
 szid char(8) PRIMARY KEY,
 vezeteknev CHAR(40) NOT NULL,
 keresztnev CHAR(15) NOT NULL);
 
  CREATE TABLE Eb (
 chip int(15) PRIMARY KEY,
 fajta CHAR(20) ,
 gazda char(8),
FOREIGN KEY (gazda)  REFERENCES Szemely(szid));
 
 CREATE TABLE Auto (
 rendszam Char(6) PRIMARY KEY,
 marka Char(20) NOT NULL,
 tipus CHAR(20) ,
 tulajdonos char(8),
FOREIGN KEY (tulajdonos)  REFERENCES Szemely(szid));

CREATE TABLE Telek (
 hrsz char(10) PRIMARY KEY,
 terulet INT ,
 utca char(60),
 hsz INT(4) );
 
CREATE TABLE Tulaj (
 hrsz char(10),
 tulajdonos char(8),
FOREIGN KEY (hrsz)  REFERENCES Telek(hrsz),
FOREIGN KEY (tulajdonos)  REFERENCES Szemely(szid) );

CREATE TABLE Szemely_vallakozas (
 tartozas boolean,
 szid char(8),
FOREIGN KEY (szid)  REFERENCES Szemely(szid) );
 
 CREATE TABLE Vallalkozas (
 adoszam int PRIMARY KEY,
 szekhely char(10),
 uzemelteto char(8),
 vallakozas_neve CHAR(80) ,
 bevetel int,
 FOREIGN KEY (szekhely)  REFERENCES Telek(hrsz),
 FOREIGN KEY (uzemelteto)  REFERENCES Szemely_vallakozas(szid));
  
 

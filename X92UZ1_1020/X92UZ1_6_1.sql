CREATE DATABASE x92uz1;
CREATE TABLE GYARTO (
    adoszam int NOT NULL primary key,
    nev char(30) NOT NULL,
    telephely varchar(255) 
);
CREATE TABLE TERMEK (
    tkod int NOT NULL primary key,
    nev char(50) NOT NULL,
    ear int ,
	FOREIGN KEY (gyarto)
    REFERENCES GYARTO(adoszam)
);
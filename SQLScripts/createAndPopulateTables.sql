
DROP TABLE IF EXISTS CheckIns;
DROP TABLE IF EXISTS Persons;

CREATE TABLE Persons (
   PersonId INT GENERATED ALWAYS AS IDENTITY,
   Homeclub VARCHAR ( 50 ) NOT NULL,
   Firstname VARCHAR ( 50 ) NOT NULL,
	Lastname VARCHAR ( 50 )  NOT NULL,
	PRIMARY KEY(PersonId));
	
CREATE TABLE CheckIns (
	PersonId INT,
   Club VARCHAR ( 50 ) NOT NULL,
   CheckInTime TIMESTAMP DEFAULT NOW());
  
 ALTER TABLE CheckIns
    ADD CONSTRAINT fk_Persons FOREIGN KEY (personId) REFERENCES Persons (personid);

INSERT INTO Persons(Homeclub, Firstname, Lastname) VALUES ('Roskilde', 'Amalie', 'landt');
INSERT INTO Persons(Homeclub, Firstname, Lastname) VALUES ('København', 'Amanda', 'Hansen');
INSERT INTO Persons(Homeclub, Firstname, Lastname) VALUES ('Valby', 'Hans', 'Larsen');
INSERT INTO Persons(Homeclub, Firstname, Lastname) VALUES ('Roskilde', 'Benjamin', 'Kongshaug');
INSERT INTO Persons(Homeclub, Firstname, Lastname) VALUES ('Roskilde', 'Dominik', 'Gadesmann');
INSERT INTO Persons(Homeclub, Firstname, Lastname) VALUES ('København', 'Jonas', 'Haslund');
INSERT INTO Persons(Homeclub, Firstname, Lastname) VALUES ('Egedal', 'Chris', 'Jensen');
INSERT INTO Persons(Homeclub, Firstname, Lastname) VALUES ('Egedal', 'Laura', 'Nielsen');


INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Roskilde');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Roskilde');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Rungsted');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Rungsted');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Rungsted');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Rungsted');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Greve');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Greve');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Greve');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Greve');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Greve');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Greve');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Egedal');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Egedal');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Egedal');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Egedal');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Egedal');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Egedal');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Egedal');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (1, 'Skovlunde');
INSERT INTO CheckIns(PersonId, Club) VALUES (2, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (2, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (2, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (3, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (3, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (4, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (4, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (4, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (4, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (5, 'Roskilde');
INSERT INTO CheckIns(PersonId, Club) VALUES (5, 'Roskilde');
INSERT INTO CheckIns(PersonId, Club) VALUES (5, 'Roskilde');
INSERT INTO CheckIns(PersonId, Club) VALUES (6, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (6, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (6, 'Valby');
INSERT INTO CheckIns(PersonId, Club) VALUES (7, 'Egedal');
INSERT INTO CheckIns(PersonId, Club) VALUES (7, 'Egedal');
INSERT INTO CheckIns(PersonId, Club) VALUES (8, 'København');
INSERT INTO CheckIns(PersonId, Club) VALUES (8, 'Egedal');


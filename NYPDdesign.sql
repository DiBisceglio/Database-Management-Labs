-- Scott DiBisceglio
-- CMPT 308 Design Project Spring 2015
-- NYPD Database

-- Create Statements

DROP TABLE employees
DROP TABLE officers
DROP TABLE civilian
DROP TABLE officers
DROP TABLE people
DROP TABLE gangs
DROP TABLE Prisoner
DROP TABLE captains
DROP TABLE Cars

-- People
CREATE TABLE people (
  Pid 		char(4) not null,
  LastName	text,
  FirstName	text,
  Address	text,
  DOB		text,
 primary key (Pid)
 );	

 -- Civilian
 CREATE TABLE civilian (
  Pid		char(4) not null references people(Pid),
  Position	text,
  CarType	text,
  CarColor	text,
 primary key (Pid)
 );

 -- Employees
 CREATE TABLE employees(
  Pid		char(4) not null references people(pid),
  Shift		text,
  FavCrimeShow  text,
  LockerNum	text,
 primary key (Pid) 
);

-- Officers
CREATE TABLE officers(
 BadgeNum    	text not null,
 Pid			text not null references people(Pid), 
 DOH	     	date,
 CarNum	     	text,
 ServiceWeapon  text,
 Unit			text,
 primary key (Pid)
 );

 -- Captains
 CREATE TABLE captains(
  ShieldNum	text not null,
  Pid		text not null references people(Pid),
  PCT 		text,
  Medals	text,
  Zone		text,
  Loc		text,
 primary key (Pid)
 );

 -- Cars
 CREATE TABLE cars (
   CarNum	text not null,
   model	text,
   TopSpeed	int,
 primary key (CarNum)
 );

-- Prisoner
CREATE TABLE prisoner (
 Pid		text not null references people(Pid),
 Crime		text,
 CellNum	text,
 SentenceYRS	int,
 Gid		text,
primary key (Pid)
);

-- Gangs
CREATE TABLE Gangs (
  GID		text not null,
  GangName	text,
  WeaponChoice	text,
 primary key(Gid)
 );


-- INSERT STATEMENTS 

-- People Inserts
INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1111', 'DiBisceglio', 'Scott', '3 Julia Court', '1993-12-18');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1112', 'Modica', 'Dakota', '244 Overlook Road', '1993-06-22');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1113', 'Regan', 'Daniel', '22 Brooklyn Lane', '1960-12-25');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1114', 'Regan', 'Jamie', '31 Mets Road', '1965-2-25');


INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1115', 'Jackson', 'Curtis', '50 Cent Lane', '1950-6-25');


INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1116', 'Matthers', 'Marshall', '8 Mile Road', '1965-9-25');


INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1117', 'Sean', 'Big', '45 Finally Famous road', '1985-8-15');


INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1118', 'Kelly', 'Ray', '1 Police Plaza', '1970-7-25');


INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1119', 'Radier', 'Dennis', '131 BTK Ave', '1985-3-2');


INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1120', 'Dahmer', 'Jeffery', '22 Serial Killer Road', '1975-5-5');


INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1121', 'Ripper', 'Jack', '65 London', '1940-11-24');


INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1122', 'Radday', 'Kevin', '32 West Main Street', '1970-4-20');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1123', 'Scofield', 'Micheal', '43 Baltimore Ave', '1970-3-22');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1124', 'Lincoin', 'Travis', '454 Test data Road', '1985-12-5');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1125', 'Cooper', 'Sheldon', '78 Caltech lane', '1975-7-21');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1126', 'Wright', 'David', '5 Third Base Road', '1974-10-20');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1127', 'Beam', 'Vinny', '181 Middletown Road', '1945-2-20');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1128', 'Labouseur', 'Alan', '2005 Hancock Building', '1985-3-30');

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1129', 'Miele', 'Dom', '7 Depot Street', '1950-6-14');	

INSERT INTO people ( pid, LastName, FirstName, Address, DOB )
	Values('1130', 'Banks', 'Llyod', '50 G Unit Lane', '1970-1-1');




-- Civilian Inserts

INSERT INTO civilian ( pid, Position, CarType, CarColor )
	Values('1112', 'dispatch', 'Scion', 'Grey');

INSERT INTO civilian ( Pid, Position, CarType, CarColor )
	Values('1117', 'Rapper', 'Rolls Royce', 'Black');

INSERT INTO civilian ( Pid, Position, CarType, CarColor )
	Values('1119', 'Serial Killer', 'Windowless Van', 'White');

INSERT INTO civilian ( Pid, Position, CarType, CarColor )
	Values('1123', 'Bank Robber', 'School Bus', 'Yellow');

INSERT INTO civilian ( Pid, Position, CarType, CarColor )
	Values('1124', 'Fighter', 'Porche', 'Red');

INSERT INTO civilian ( Pid, Position, CarType, CarColor )
	Values('1120', 'Rapist', 'MiniVan', 'Blue');

INSERT INTO civilian ( Pid, Position, CarType, CarColor )
	Values('1126', 'Player', 'Pickup Truck', 'Blue');

INSERT INTO civilian ( Pid, Position, CarType, CarColor )
	Values('1121', 'Swordsman', 'Bike', 'Pink');

INSERT INTO civilian ( Pid, Position, CarType, CarColor )
	Values('1130', 'Artist', 'Lambogini', 'Yellow');


INSERT INTO civilian ( Pid, Position, CarType, CarColor )
	Values('1115', 'Designer', 'Ferrari', 'Black');

select *
from civilian;
	
-- Employee Inserts

INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1111', 'Midnight', 'Blue Bloods', '22');


INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1113', 'Midnight', 'CSI', '5');


INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1114', 'Days', 'Blue Bloods', '7');

	
INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1116', 'Nights', 'Criminal Minds', '8');

	
INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1118', 'Days', 'NYPD Blue', '9');


INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1122', 'Nights', 'NCIS', '34');


INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1125', 'Days', 'CSI', '81');


INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1127', 'Nights', 'NCIS', '25');


INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1129', 'Days', 'COPS', '65');


INSERT INTO employees ( pid, Shift, FavCrimeShow, LockerNum )
	Values( '1130', 'Nights', 'Numbers', '1');


-- Officer Inserts
INSERT INTO officers (BadgeNum, pid, DOH, CarNum, ServiceWeapon, Unit)
	Values ('25960', '1113', '1993-12-18', '51', 'glock', 'detectives');

INSERT INTO officers (BadgeNum, Pid, DOH, CarNum, ServiceWeapon, Unit)
	Values ('75309', '1114', '1995-10-5', '50', 'glock', 'patrol');

INSERT INTO officers (BadgeNum, Pid, DOH, CarNum, ServiceWeapon, Unit)
	Values ('13375', '1116', '1997-6-22', '91', 'm4', 'SWAT');

INSERT INTO officers (BadgeNum, Pid, DOH, CarNum, ServiceWeapon, Unit)
	Values ('90548', '1118', '1990-4-20', '25', 'm19', 'ESU');

INSERT INTO officers (BadgeNum, Pid, DOH, CarNum, ServiceWeapon, Unit)
	Values ('06229', '1125', '1950-4-20', '91', 'glock', 'Forensics');
	

INSERT INTO officers (BadgeNum, Pid, DOH, CarNum, ServiceWeapon, Unit)
	Values ('34764', '1127', '2015-4-30', '51', 'Ruger', 'Patrol');	


INSERT INTO officers (BadgeNum, Pid, DOH, CarNum, ServiceWeapon, Unit)
	Values ('45641', '1129', '1987-5-6', '98', 'Ruger', 'detectives');	
	
-- Captaiain Inserts
INSERT INTO Captains ( pid, PCT, Medals, Zone, Loc, ShieldNum)
	Values ('1111', '25', 'Life Saver', 'Zone 5', 'Harlem', '1289');

INSERT INTO Captains ( pid, PCT, Medals, Zone, Loc, ShieldNum)
	Values ('1122', '32', 'WTC', 'Zone 3', 'Central Park', '1337');

INSERT INTO Captains ( pid, PCT, Medals, Zone, Loc, ShieldNum)
	Values ('1128', '40', 'Programmer of the Year', 'Zone 2', 'West Side', '1069');

-- Cars Inserts

INSERT INTO Cars (CarNum, Model, TopSpeed)
	Values ( '51', 'Ford Intrepeid', '125');

INSERT INTO Cars (CarNum, Model, TopSpeed)
	Values ( '50', 'Dodge Challanger', '150');

INSERT INTO Cars (CarNum, Model, TopSpeed)
	Values ( '91', 'Ford Edge', '110');

INSERT INTO Cars (CarNum, Model, TopSpeed)
	Values ( '25', 'Ford Exploer', '95');

INSERT INTO Cars (CarNum, Model, TopSpeed)
	Values ( '98', 'Crown Vic', '100');

-- Prisoner Inserts
INSERT INTO Prisoner(pid, crime, CellNum, SentenceYRS, GID)
	Values('1119', 'murder', '100', '150', '1');

INSERT INTO Prisoner(pid, crime, CellNum, SentenceYRS, GID)
	Values('1120', 'cannibalism', '101', '89', '2');

INSERT INTO Prisoner(pid, crime, CellNum, SentenceYRS, GID)
	Values('1123', 'Armed Robbery', '102', '24', '2');

INSERT INTO Prisoner(pid, crime, CellNum, SentenceYRS, GID)
	Values('1124', 'Gang Assault', '103', '10', '3');

-- GANG INSERTS
INSERT INTO Gangs(gid, GangName, weaponChoice)
	Values('1', 'Aryan Brotherhood', 'Shank');

INSERT INTO Gangs(gid, GangName, weaponChoice)
	Values('2', 'La Nuestra Family', 'Screwdriver');

INSERT INTO Gangs(gid, GangName, weaponChoice)
	Values('3', 'Black Panters', 'Pen');


	
		
-- TEST QUERY

Select *
From Civilian

Select *
from gangs

Select *
From Prisoner

Select *
from cars

Select *
From officers


Select *
from employees

Select *
From Captains


Select  *
From civilian
ORDER By Cid ASC

Select *
from civilian 
where cid = '1112'

Select *
From People
ORDER By LastName ASC

-- CREATE, GRANT & REVOKE

CREATE ROLE Commissioner;	
GRANT ALL ON ALL TABLES
IN SCHEMA PUBLIC
TO Commissioner;

CREATE ROLE Chief;
GRANT SELECT ON people, civilian, employees, officers, 
		gangs, prisoner, cars, captains
TO Chief;
GRANT INSERT ON prisoner, gangs, employees, people, cars
TO Chief;
GRANT UPDATE ON prisoner, gangs, employees, people, cars
TO Chief;

CREATE ROLE Recruitment;
GRANT SELECT ON people, employees, officers, civilian
TO Recruitment;
GRANT INSERT ON people, officers, employees, civilian
TO Recruitment;


-- VIEWS
-- THIS VIEW SHOWS OFFICER GUN AND HOME ADDRESS
CREATE VIEW OfficerWeaponsandAddress
AS
SELECT serviceWeapon as OfficerGunType, Address as Home
FROM officers
INNER JOIN People
on people.pid = officers.pid

DROP VIEW OfficerWeaponsandAddress;

Select *
FROM OfficerWeaponsandAddress

-- THIS VIEW SHOWS PRISONERS CARS AND THEIR COMMITED CRIME

CREATE VIEW PrisonerCarLog
AS
SELECT crime as CommittedOffence, CarType as Car
FROM Prisoner
INNER JOIN Civilian
on Prisoner.pid = Civilian.pid

SELECT *
FROM PrisonerCarLog

-- THIS VIEW SHOWS POLICE CAPTAINS FAVORITE CRIME SHOWS

CREATE VIEW CaptainsFavShows
AS
SELECT FavCrimeShow as FavoriteShow, PCT as PCTItsWatched
FROM Employees
INNER JOIN Captains
on captains.pid = employees.pid


Select *
From CaptainsFavShows

SELECT *
From prisoner

-- "FUN" QUERIES 
-- Model, Speed and Unit
SELECT Model as CarType, TopSpeed as Speed, Unit as Unit
From Cars
INNER JOIN Officers
on Officers.carnum = cars.carnum


-- AVG SPEED OF PATROL CAR
SELECT TopSpeed as Speed, Unit as Unit
FROM Cars
INNER JOIN Officers
on Officers.carnum = cars.carnum
WHERE Unit = 'patrol'

-- Prisoners Sentence and Age

SELECT sentenceYRS as timeBehindBars, DOB as Age
FROM Prisoner
INNER JOIN People
on Prisoner.pid = People.pid
WHERE 
DROP TABLE IF EXISTS SubwayTrack;
CREATE TABLE SubwayTrack (
  id INTEGER NOT NULL,
  name VARCHAR(20) NOT NULL,
  color VARCHAR(20) NOT NULL,
  letter VARCHAR(1) NOT NULL,
  initialStationID INTEGER REFERENCES MetroStation(id) NOT NULL,
  finalStationID INTEGER REFERENCES MetroStation(id) NOT NULL,

  PRIMARY KEY(id, name, color, letter),

  CHECK (initialStationID != finalStationID)
);

DROP TABLE IF EXISTS StationBelongs;
CREATE TABLE StationBelongs (
  trackID INTEGER REFERENCES SubwayTrack(id),
  stationID INTEGER REFERENCES MetroStation(id),
  PRIMARY KEY(trackID, stationID)
);

DROP TABLE IF EXISTS MetroStation;
CREATE TABLE MetroStation (
  id INTEGER PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  numberOfTracks INTEGER NOT NULL
);

DROP TABLE IF EXISTS TrainTime;
CREATE TABLE TrainTime (
  id INTEGER PRIMARY KEY,
  source VARCHAR(20) NOT NULL,
  destination VARCHAR(20) NOT NULL,
  departureDate DATE NOT NULL,
  arrivalDate DATE NOT NULL,
  journeyID INTEGER REFERENCES Journey(id) NOT NULL,

  CHECK(source != destination),
  CHECK(departureDate != arrivalDate)
);

DROP TABLE IF EXISTS Journey;
CREATE TABLE Journey (
  id INTEGER PRIMARY KEY,
  departureDate DATE NOT NULL,
  arrivalDate DATE NOT NULL,
  trainTimeID INTEGER REFERENCES TrainTime(id),
  train INTEGER REFERENCES Train (id) NOT NULL

  CHECK(departureDate != arrivalDate)
);

DROP TABLE IF EXISTS Train;
CREATE TABLE Train (
  id INTEGER PRIMARY KEY,
  type VARCHAR(20) NOT NULL,
  maxSpeed INTEGER NOT NULL,
  maxLoad INTEGER NOT NULL,
  maxNumberOfPassengers INTEGER NOT NULL,

  CHECK(maxSpeed > 0),
  CHECK(maxLoad > 0),
  CHECK(maxNumberOfPassengers > 0)
);

DROP TABLE IF EXISTS TicketMachine;
CREATE TABLE TicketMachine (
  id INTEGER PRIMARY KEY
);

DROP TABLE IF EXISTS TicketMachineBelongs;
CREATE TABLE TicketMachineBelongs (
  ticketMachineID INTEGER REFERENCES TicketMachine(id),
  metroStationID INTEGER REFERENCES MetroStation(id),
  PRIMARY KEY(ticketMachineID, metroStationID)
);

DROP TABLE IF EXISTS ValidationMachine;
CREATE TABLE ValidationMachine (
  id INTEGER PRIMARY KEY
);

DROP TABLE IF EXISTS ValidationMachineBelongs;
CREATE TABLE ValidationMachineBelongs (
  validationMachineID INTEGER REFERENCES ValidationMachine(id),
  metroStationID INTEGER REFERENCES MetroStation(id),
  PRIMARY KEY(validationMachineID, metroStationID)
);

DROP TABLE IF EXISTS Validation;
CREATE TABLE Validation(
	validationMachineID INTEGER REFERENCES ValidationMachine(id) NOT NULL,
        ticketID INTEGER REFERENCES Ticket(id) NOT NULL,
	validationDate DATE NOT NULL,
	terminationDate DATE NOT NULL,

  PRIMARY KEY(validationMachineID, ticketID),

	CHECK(validationDate < terminationDate)
);

DROP TABLE IF EXISTS Ticket;
CREATE TABLE Ticket (
  id INTEGER PRIMARY KEY,
  type VARCHAR(20) NOT NULL,
  numberOfTrips INTEGER NOT NULL,
  price REAL NOT NULL
);


DROP TABLE IF EXISTS BuyTicket;
CREATE TABLE BuyTicket (
  ticketID INTEGER REFERENCES Ticket(id) NOT NULL,
  ticketMachineID INTEGER REFERENCES TicketMachine(id) NOT NULL,

  PRIMARY KEY (ticketID,ticketMachineID)
);

DROP TABLE IF EXISTS ReloadTicket;
CREATE TABLE ReloadTicket (
  ticketID INTEGER REFERENCES Ticket(id) NOT NULL,
  ticketMachineID INTEGER REFERENCES TicketMachine(id) NOT NULL,
  reloadDate DATE NOT NULL,

  PRIMARY KEY (ticketID,ticketMachineID,reloadDate)
);

DROP TABLE IF EXISTS Person;
CREATE TABLE Person (
	id INTEGER PRIMARY KEY,
	name VARCHAR(25) NOT NULL,
	nif INTEGER  NOT NULL,
	dateOfBirth DATE NOT NULL,
	birthPlace VARCHAR(25) NOT NULL,

	UNIQUE(nif),
	UNIQUE(name, dateOfBirth, birthPlace)
);

DROP TABLE IF EXISTS Passenger;
CREATE TABLE Passenger (
	id INTEGER PRIMARY KEY,
	discount VARCHAR(20) NOT NULL,
	personID INTEGER REFERENCES Person(id) NOT NULL,

	UNIQUE(personID)
);

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
  id INTEGER PRIMARY KEY,
	wage REAL NOT NULL,
	socialSecurityID INTEGER NOT NULL,
  personID INTEGER REFERENCES Person(id) NOT NULL,

  UNIQUE(personID),
  UNIQUE(socialSecurityID),
	CHECK(wage > 0)
);

DROP TABLE IF EXISTS TrainOperator;
CREATE TABLE TrainOperator (
	id INTEGER PRIMARY KEY,
	licenseNumber INTEGER NOT NULL,
	employeeID INTEGER REFERENCES Employee(id) NOT NULL,

	UNIQUE(employeeID),
	UNIQUE(licenseNumber)
);

DROP TABLE IF EXISTS TicketInspector;
CREATE TABLE TicketInspector (
  id INTEGER PRIMARY KEY,
  employeeID INTEGER REFERENCES Employee(id) NOT NULL,

	UNIQUE(employeeID)
);

DROP TABLE IF EXISTS OperateTrain;
CREATE TABLE OperateTrain (
	journeyID INTEGER REFERENCES Journey(id),
	trainOperatorID INTEGER REFERENCES TrainOperator(id),

  PRIMARY KEY(journeyID, trainOperatorID)
);

DROP TABLE IF EXISTS TicketInspection;
CREATE TABLE TicketInspection (
	journeyID INTEGER REFERENCES Journey(id),
	ticketInspectorID INTEGER REFERENCES TicketInspector(id),

	PRIMARY KEY (journeyID, ticketInspectorID)
);

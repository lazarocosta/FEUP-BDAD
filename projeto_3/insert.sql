/*INSERTS INTO METRO*/

/* SubwayTrack */
INSERT INTO SubwayTrack (id, name, color, letter, initialStationID, finalStationID) VALUES (0, 'Linha Amarela', 'Amarelo', 'D',0,1);
INSERT INTO SubwayTrack (id, name, color, letter, initialStationID, finalStationID) VALUES (1, 'Linha Azul', 'Azul', 'A',2,3);

/* MetroStation */
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (0, 'Santo Ovidio',2);
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (1, 'Sao Joao',2);
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (2, 'Campanha',2);
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (3, 'Trindade',2);
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (4, 'Sao Bento',2);

/* StationBelongs */
INSERT INTO StationBelongs (trackID, stationID) VALUES (0,0);
INSERT INTO StationBelongs (trackID, stationID) VALUES (0,1);
INSERT INTO StationBelongs (trackID, stationID) VALUES (1,2);
INSERT INTO StationBelongs (trackID, stationID) VALUES (1,3);
INSERT INTO StationBelongs (trackID, stationID) VALUES (0,4);
INSERT INTO StationBelongs (trackID, stationID) VALUES (1,4);

/*Person*/
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (0, 'Lazaro',111, '1996-04-14', 'Santa Maria da Feira');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (1, 'Diogo',212, '1996-09-25', 'Porto');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (2, 'Pedro',334, '1996-03-25', 'Marco de Canaveses');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (3, 'Joao',323, '1987-03-28', 'Matosinhos');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (4, 'Manuel',453, '1999-03-25', 'lisboa');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (5, 'Ronaldo',45343423, '1979-03-25', 'Felgueiras');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (6, 'Ronaldo',49943423, '1989-03-25', 'Monção');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (7, 'Roberto',45653434, '1979-03-02', 'Setubal');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (8, 'Antonio',467467467, '1977-07-07', 'Barcelona');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (9, 'Antonio',44693435, '1977-05-05', 'Grandola');
/*Employee*/

INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (0,1230,1234566789,3);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (1,1630,1234566566,5);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (2,1000,1234569999,6);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (3,1030,1234336566,7);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (4,1031,1234335456,8);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (5,1032,7734353466,9);

/*TicketMachine*/
INSERT INTO TicketMachine(id) VALUES (0);
INSERT INTO TicketMachine(id) VALUES (1);
INSERT INTO TicketMachine(id) VALUES (2);
INSERT INTO TicketMachine(id) VALUES (3);
INSERT INTO TicketMachine(id) VALUES (4);
INSERT INTO TicketMachine(id) VALUES (5);
INSERT INTO TicketMachine(id) VALUES (6);

/*TicketMachineBelongs*/
INSERT INTO TicketMachineBelongs(ticketMachineID, metroStationID) VALUES (0,0);
INSERT INTO TicketMachineBelongs(ticketMachineID, metroStationID) VALUES (1,0);
INSERT INTO TicketMachineBelongs(ticketMachineID, metroStationID) VALUES (2,0);
INSERT INTO TicketMachineBelongs(ticketMachineID, metroStationID) VALUES (3,1);
INSERT INTO TicketMachineBelongs(ticketMachineID, metroStationID) VALUES (4,2);

/*Ticket*/
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (0,'passe',999,36);
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (1,'normal',1,2);
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (2,'normal',90,56);
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (3,'normal',3,3);
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (4,'normal',3,3);
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (5,'normal',3,3);

/*ValidationMachine*/
INSERT INTO ValidationMachine(id) VALUES (0);
INSERT INTO ValidationMachine(id) VALUES (1);
INSERT INTO ValidationMachine(id) VALUES (2);
INSERT INTO ValidationMachine(id) VALUES (3);
INSERT INTO ValidationMachine(id) VALUES (4);
INSERT INTO ValidationMachine(id) VALUES (5);
INSERT INTO ValidationMachine(id) VALUES (6);

/*TrainOperator*/
INSERT INTO TrainOperator (id, licenseNumber, employeeID) VALUES (0,12,0);
INSERT INTO TrainOperator (id, licenseNumber, employeeID) VALUES (1,67,1);
INSERT INTO TrainOperator (id, licenseNumber, employeeID) VALUES (2,45,2);

/*TicketInspector*/
INSERT INTO TicketInspector (id, employeeID) VALUES (0,3);
INSERT INTO TicketInspector (id, employeeID) VALUES (2,4);
INSERT INTO TicketInspector (id, employeeID) VALUES (4,5);

/*Passenger*/
INSERT INTO Passenger (id, discount, personID) VALUES (0, 'Jovem',0);
INSERT INTO Passenger (id, discount, personID) VALUES (1, 'Jovem',1);
INSERT INTO Passenger (id, discount, personID) VALUES (2, 'Jovem',2);

/*Validation*/
INSERT INTO Validation (validationMachineID, ticketID, validationDate, terminationDate) VALUES (0,0, '2010-01-01', '2010-02-02');
INSERT INTO Validation (validationMachineID, ticketID, validationDate, terminationDate) VALUES (1,1, '2016-01-02', '2016-02-02');
INSERT INTO Validation (validationMachineID, ticketID, validationDate, terminationDate) VALUES (2,2, '2015-01-02', '2016-02-02');
INSERT INTO Validation (validationMachineID, ticketID, validationDate, terminationDate) VALUES (3,3,'2014-01-02', '2016-02-02');
INSERT INTO Validation (validationMachineID, ticketID, validationDate, terminationDate) VALUES (1,3,'2015-01-02', '2015-02-02');
/*Train*/
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (0,'P-1234',55,50000,100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (1,'P-1234',60,50000,100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (2,'P-1264',65,50000,100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (3,'P-1234',55,50000,100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (4,'P-4344',50,50000,100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (5,'P-5534',50,50000,100);

/*Journey*/
INSERT INTO Journey (id, departureDate, arrivalDate, trainTimeID, train) VALUES (0, '2010-02-12', '2016-02-13',0,0);
INSERT INTO Journey (id, departureDate, arrivalDate, trainTimeID, train) VALUES (1, '2016-02-13', '2016-02-14',1,1);
INSERT INTO Journey (id, departureDate, arrivalDate, trainTimeID, train) VALUES (2, '2016-02-11', '2016-02-12',2,2);
INSERT INTO Journey (id, departureDate, arrivalDate, trainTimeID, train) VALUES (3, '2016-02-12', '2016-02-13',2,3);
INSERT INTO Journey (id, departureDate, arrivalDate, trainTimeID, train) VALUES (4, '2016-02-13', '2016-02-14',2,4);
INSERT INTO Journey (id, departureDate, arrivalDate, trainTimeID, train) VALUES (5, '2016-02-14', '2016-02-15',2,0);

/*TainTime*/
INSERT INTO TrainTime (id, source, destination, departureDate, arrivalDate, journeyID) VALUES (0, 'Porto', 'Lisboa', '2000-01-01', '2000-01-02', 0 );
INSERT INTO TrainTime (id, source, destination, departureDate, arrivalDate, journeyID) VALUES (1, 'Porto', 'Matosinhos', '2016-01-01', '2016-01-02', 1 );
INSERT INTO TrainTime (id, source, destination, departureDate, arrivalDate, journeyID) VALUES (2, 'Lisboa', 'Porto', '2015-01-11', '2015-01-12', 2 );

/*BuyTicket*/
INSERT INTO BuyTicket (ticketID, ticketMachineID) VALUES (0,0);
INSERT INTO BuyTicket (ticketID, ticketMachineID) VALUES (1,1);
INSERT INTO BuyTicket (ticketID, ticketMachineID) VALUES (2,2);
INSERT INTO BuyTicket (ticketID, ticketMachineID) VALUES (3,2);
INSERT INTO BuyTicket (ticketID, ticketMachineID) VALUES (4,4);
INSERT INTO BuyTicket (ticketID, ticketMachineID) VALUES (5,2);

/*ReloadTicket*/
INSERT INTO ReloadTicket (ticketID, ticketMachineID, reloadDate) VALUES (0,0,'2000-01-01');
INSERT INTO ReloadTicket (ticketID, ticketMachineID, reloadDate) VALUES (0,1,'2000-01-01');
INSERT INTO ReloadTicket (ticketID, ticketMachineID, reloadDate) VALUES (0,2,'2010-01-01');

/*OperateTrain*/
INSERT INTO OperateTrain (journeyID, trainOperatorID) VALUES (0,0);
INSERT INTO OperateTrain (journeyID, trainOperatorID) VALUES (0,1);
INSERT INTO OperateTrain (journeyID, trainOperatorID) VALUES (1,1);

/*TicketInspection*/
INSERT INTO TicketInspection (journeyID, ticketInspectorID) VALUES (0,0);
INSERT INTO TicketInspection (journeyID, ticketInspectorID) VALUES (1,1);
INSERT INTO TicketInspection (journeyID, ticketInspectorID) VALUES (2,2);

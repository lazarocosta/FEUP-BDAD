/*INSERTS INTO METRO*/

/* SubwayTrack */
INSERT INTO SubwayTrack (id, name, color, letter, initialStationID, finalStationID) VALUES (0, 'Linha Amarela', 'Amarelo', 'D', 0, 1);
INSERT INTO SubwayTrack (id, name, color, letter, initialStationID, finalStationID) VALUES (1, 'Linha Azul', 'Azul', 'A', 2, 3);

/* MetroStation */
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (0, 'Santo Ovidio', 2);
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (1, 'Sao Joao', 2);
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (2, 'Campanha', 2);
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (3, 'Trindade', 2);
INSERT INTO MetroStation (id, name, numberOfTracks) VALUES (4, 'Sao Bento', 2);

/* StationBelongs */
INSERT INTO StationBelongs (trackID, stationID) VALUES (0, 0);
INSERT INTO StationBelongs (trackID, stationID) VALUES (0, 1);
INSERT INTO StationBelongs (trackID, stationID) VALUES (1, 2);
INSERT INTO StationBelongs (trackID, stationID) VALUES (1, 3);
INSERT INTO StationBelongs (trackID, stationID) VALUES (0, 4);
INSERT INTO StationBelongs (trackID, stationID) VALUES (1, 4);

/*Person*/
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (1212, 'Lazaro', 111, '14-04-1996', 'Santa Maria da Feira');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (2222, 'Diogo', 212, '25-09-1996', 'Porto');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (334, 'Pedro', 334, '25-03-1996', 'Marco de Canaveses');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (322, 'Joao',  323, '28-03-1987', 'Matosinhos');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (36, 'Manuel', 453, '25-03-1999', 'lisboa');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (3623424, 'Ronaldo', 45343423, '25-03-1979', 'Felgueiras');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (3623774, 'Assis', 49943423, '25-03-1989', 'Monção');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (9936424, 'Roberto', 45653434, '02-03-1979', 'Setubal');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (993642234, 'Antonio', 467467467, '07-07-1977', 'Barcelona');
INSERT INTO Person (id, name, nif, dateOfBirth, birthPlace) VALUES (99365424, 'Augusto', 44693435, '05-05-1977', 'Grandola');
/*Employee*/

INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (0, 1230, 1234566789, 3);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (1, 1630, 1234566566, 5);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (2, 1000, 1234569999, 6);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (3, 1030, 1234336566, 7);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (4, 1031, 1234335456, 8);
INSERT INTO Employee(id, wage, socialSecurityID, personID) VALUES (5, 1032, 7734353466, 9);

/*TicketMachine*/
INSERT INTO TicketMachine(id) VALUES (0);
INSERT INTO TicketMachine(id) VALUES (1);
INSERT INTO TicketMachine(id) VALUES (2);
INSERT INTO TicketMachine(id) VALUES (3);
INSERT INTO TicketMachine(id) VALUES (4);
INSERT INTO TicketMachine(id) VALUES (5);
INSERT INTO TicketMachine(id) VALUES (6);

/*TicketMachineBelongs*/
INSERT INTO TicketMachineBelongs(ticketMachineID,metroStationID) VALUES (0,0);
INSERT INTO TicketMachineBelongs(ticketMachineID,metroStationID) VALUES (1,0);
INSERT INTO TicketMachineBelongs(ticketMachineID,metroStationID) VALUES (2,0);
INSERT INTO TicketMachineBelongs(ticketMachineID,metroStationID) VALUES (3,1);

/*Ticket*/
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (0,'passe',999,36);
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (1,'normal',1,2);
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (2,'normal',90,56);
INSERT INTO Ticket(id,type,numberOfTrips, price) VALUES (3,'normal',3,3);

/*ValidationMachine*/
INSERT INTO ValidationMachine(id) VALUES (0);
INSERT INTO ValidationMachine(id) VALUES (1);
INSERT INTO ValidationMachine(id) VALUES (2);
INSERT INTO ValidationMachine(id) VALUES (3);
INSERT INTO ValidationMachine(id) VALUES (4);
INSERT INTO ValidationMachine(id) VALUES (5);
INSERT INTO ValidationMachine(id) VALUES (6);

/*TrainOperator*/
INSERT INTO TrainOperator (id, licenseNumber, employeeID) VALUES (0, 12, 0);
INSERT INTO TrainOperator (id, licenseNumber, employeeID) VALUES (1, 67, 1);
INSERT INTO TrainOperator (id, licenseNumber, employeeID) VALUES (2, 45, 2);

/*TicketInspector*/
INSERT INTO TicketInspector (id, employeeID) VALUES (0, 3);
INSERT INTO TicketInspector (id, employeeID) VALUES (2, 4);
INSERT INTO TicketInspector (id, employeeID) VALUES (4, 5);

/*Passenger*/
INSERT INTO Passenger (id, discount, personID) VALUES (0, 'Jovem', 0);
INSERT INTO Passenger (id, discount, personID) VALUES (1, 'Jovem', 1);

/*Validation*/
INSERT INTO Validation (validationMachineID, ticketID, validationDate, terminationDate) VALUES (0, 0, '01-01-2010', '02-02-20010');
INSERT INTO Validation (validationMachineID, ticketID, validationDate, terminationDate) VALUES (1, 1, '02-01-2016', '02-02-20016');

/*Train*/
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (0,'P-1234', 50, 50000, 100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (1,'P-1234', 50, 50000, 100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (2,'P-1264', 50, 50000, 100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (3,'P-1234', 50, 50000, 100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (4,'P-4344', 50, 50000, 100);
INSERT INTO Train (id, type, maxSpeed, maxLoad, maxNumberOfPassengers) VALUES (5,'P-5534', 50, 50000, 100);

/*Journey*/
INSERT INTO Journey (id, departureDate, arrivalDate, trainTimeID, train) VALUES (0, '12-02-2016', '13-02-2016', 0, 0);
INSERT INTO Journey (id, departureDate, arrivalDate, trainTimeID, train) VALUES (1, '13-02-2016', '14-02-2016', 1, 1);
INSERT INTO Journey (id, departureDate, arrivalDate, trainTimeID, train) VALUES (2, '14-02-2016', '15-02-2016', 2, 0);

/*TainTime*/
INSERT INTO TrainTime (id, source, destination, departureDate, arrivalDate, journeyID) VALUES (0, 'Porto', 'Lisboa', '01-01-2000', '02-01-2000', 0 );
INSERT INTO TrainTime (id, source, destination, departureDate, arrivalDate, journeyID) VALUES (1, 'Porto', 'Matosinhos', '01-01-2016', '02-01-2016', 1 );
INSERT INTO TrainTime (id, source, destination, departureDate, arrivalDate, journeyID) VALUES (2, 'Lisboa', 'Porto', '11-01-2015', '12-01-2015', 2 );

/*BuyTicket*/
INSERT INTO BuyTicket (ticketID, ticketMachineID) VALUES (0, 0);
INSERT INTO BuyTicket (ticketID, ticketMachineID) VALUES (1, 1);
INSERT INTO BuyTicket (ticketID, ticketMachineID) VALUES (2, 2);

/*ReloadTicket*/
INSERT INTO ReloadTicket (ticketID, ticketMachineID, reloadDate) VALUES (0, 0,'01-01-2000');
INSERT INTO ReloadTicket (ticketID, ticketMachineID, reloadDate) VALUES (0, 1,'01-01-2000');
INSERT INTO ReloadTicket (ticketID, ticketMachineID, reloadDate) VALUES (0, 2,'01-01-2010');

/*OperateTrain*/
INSERT INTO OperateTrain (journeyID, trainOperatorID) VALUES (0, 0);
INSERT INTO OperateTrain (journeyID, trainOperatorID) VALUES (0, 1);
INSERT INTO OperateTrain (journeyID, trainOperatorID) VALUES (1, 1);

/*TicketInspection*/
INSERT INTO TicketInspection (journeyID, ticketInspectorID) VALUES (0, 0);
INSERT INTO TicketInspection (journeyID, ticketInspectorID) VALUES (1, 1);
INSERT INTO TicketInspection (journeyID, ticketInspectorID) VALUES (2, 2);

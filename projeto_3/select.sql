/* Selecionar o empregado com o segundo salário mais alto */
SELECT name, wage FROM Employee
JOIN Person ON (Employee.personID = Person.id)
WHERE wage = ( SELECT MAX(wage)
	FROM Employee
	WHERE wage
	NOT IN
	 ( SELECT MAX(wage) FROM Employee )
 );

/* Selecionar o id, tipo e velocidade do comboio com maior velocidade numa viagem */
SELECT id, type, MAX(MAXSpeed)
FROM (SELECT Train.id AS id, type, MAXSpeed
FROM Train JOIN Journey ON Train.id = Journey.train);

/* Numero de maquinistas que recebe mais do que todos os revisores */
SELECT COUNT(*) FROM TrainOperator
JOIN Employee ON (TrainOperator.employeeID = Employee.id)
WHERE wage > ( SELECT MAX(wage)
	FROM TicketInspector
	JOIN Employee ON (employeeId = Employee.id)
);

/* Selectiona o id e tipo de bilhete de todos os bilhetes validados depois de uma determinada data */
SELECT DISTINCT Ticket.id AS id, type FROM Validation
JOIN Ticket ON (Validation.ticketID = Ticket.id)
WHERE validationDate > '01-01-2010'
ORDER BY id DESC;

/* Seleciona o id das viagens cujo destino é Porto ou Lisboa */
SELECT Journey.id FROM Journey
JOIN TrainTime ON (TrainTime.journeyID = Journey.id)
WHERE destination IN ('Porto','Lisboa');

/* Conta o número de viagens que se realizaram antes da hora prevista de partida */
SELECT COUNT(*) FROM Journey
JOIN TrainTime ON (Journey.trainTimeID = TrainTime.id)
WHERE Journey.departureDate < TrainTime.departureDate;

/* Conta o número de vezes que cada bilhete foi recarregado, agrupando por id, considerando apenas os que foram recarregados mais do que uma vez */
SELECT ticketID, COUNT(ticketID) FROM ReloadTicket
GROUP BY ticketID
HAVING COUNT(*) > 1;

/* Seleciona o id e tipo de todos os comboios que já realizaram pelo menos uma viagem */
SELECT DISTINCT train, type FROM Journey
JOIN Train ON (Journey.train = Train.id);

/* Conta o número de vezes que cada bilhete foi recarregado, agrupando por id */
SELECT ticketID, COUNT (ticketID) FROM Validation
GROUP BY ticketID;

/* Contagem do número de bilhetes comprados nas máquinas de uma determinada linha, agrupando por nome da linha */
SELECT SubwayTrack.name, COUNT(ticketID) FROM BuyTicket
JOIN TicketMachine ON (BuyTicket.ticketMachineID = TicketMachine.id)
JOIN TicketMachineBelongs ON (TicketMachineBelongs.ticketMachineID = TicketMachine.id)
JOIN MetroStation ON (MetroStation.id = TicketMachineBelongs.metroStationID)
JOIN StationBelongs ON (StationBelongs.stationID = MetroStation.id)
JOIN SubwayTrack ON (SubwayTrack.id = StationBelongs.trackID)
GROUP BY SubwayTrack.name;

/* Seleciona as viagens em que há um atraso na data de chegada */
SELECT Journey.id, julianday(Journey.arrivalDate) - julianday(TrainTime.arrivalDate) AS delay
FROM TrainTime JOIN Journey ON (journeyID = Journey.id)
WHERE delay > 1
ORDER BY delay ASC;


/*seleciona pessoas que nao sao passaeiros nem empregados do metro*/
SELECT * FROM
Person
LEFT JOIN Employee ON  Person.id = Employee.personID
LEFT JOIN Passenger ON Passenger.personID = Person.id
WHERE Employee.id is NULL AND Passenger.id is NULL;

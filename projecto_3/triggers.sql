/* Trigger 1 */
CREATE TRIGGER IF NOT EXISTS decTicket AFTER INSERT ON Validation
BEGIN
  UPDATE Ticket SET numberOfTrips = numberOfTrips - 1
    WHERE NEW.ticketID = Ticket.id;
END;

/* Trigger 2 */
CREATE TRIGGER IF NOT EXISTS incTicket AFTER INSERT ON ReloadTicket
BEGIN
  UPDATE Ticket SET numberOfTrips = numberOfTrips + 1
    WHERE NEW.ticketID = Ticket.id;
END;

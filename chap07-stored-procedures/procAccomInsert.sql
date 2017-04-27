--CREATE PROCEDURE Accom_Insert WHICH ADDS NEW RECORD TO TABLE Accommodations
--WITH PARAMETERS @accom_ID, @room_number, @client_ID, @arrival_date, @departure_date

CREATE OR REPLACE PROCEDURE Accom_Insert (
	p_accom_ID       IN NUMBER,
	p_room_number    IN NUMBER,
	p_client_ID      IN NUMBER,
	p_arrival_date   IN DATE,
	p_departure_date IN DATE)
IS
BEGIN
	INSERT INTO Accommodations VALUES (p_accom_ID, p_room_number,
                  p_client_ID, p_arrival_date, p_departure_date);
  COMMIT;
END Accom_Insert;


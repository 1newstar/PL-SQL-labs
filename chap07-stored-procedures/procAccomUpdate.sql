--CREATE PROCEDURE Accom_Update WHICH UPDATES RECORD IN TABLE Accommodations
--WITH PARAMETERS @p_accom_ID, @p_room_number, @p_client_ID, @p_arrival_date, @p_departure_date
CREATE OR REPLACE PROCEDURE Accom_Update (
	p_accom_ID       IN NUMBER,
	p_room_number    IN NUMBER,
	p_client_ID      IN NUMBER,
	p_arrival_date   IN DATE,
	p_departure_date IN DATE)
IS
BEGIN
	UPDATE Accommodations
	SET
		accom_room_number    = p_room_number,
		accom_client_ID      = p_client_ID,
		accom_arrival_date   = p_arrival_date,
		accom_departure_date = p_departure_date
		WHERE accom_ID       = p_accom_ID;
    COMMIT;
END Accom_Update;


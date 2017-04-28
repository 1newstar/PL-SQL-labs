--CREATE FUNCTION Accom_Select_RoomComfort WHICH RETURNS TYPE OF COMFORT OF THE ROOM BY ITS NUMBER
--WITH PARAMETER @p_room_number
CREATE OR REPLACE FUNCTION Accom_Select_RoomComfort (
  p_room_number IN NUMBER) RETURN VARCHAR2
  AS retComfort VARCHAR2(20);
BEGIN
  SELECT r_comfort
  INTO retComfort
  FROM ROOMS
  WHERE room_number = p_room_number;
  RETURN retComfort;
END Accom_Select_RoomComfort;


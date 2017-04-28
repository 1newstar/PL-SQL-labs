--EXAMPLE OF CALLING Accom_Select_RoomComfort FUNCTION IN QUERY
SELECT room_number, Accom_Select_RoomComfort(room_number) AS comfort
FROM ROOMS
WHERE room_number = 706;


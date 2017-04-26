--SELECT ROOMS THAT WAS NEVER RESERVATED
SELECT R.room_number, R.r_comfort, R.r_price
FROM Rooms R
WHERE NOT EXISTS (SELECT * FROM Reservations Res
  WHERE Res.res_room_number = R.room_number);


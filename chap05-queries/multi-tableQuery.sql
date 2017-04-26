--SELECT ROOMS THAT WAS RENTED LESS THAN TWICE
SELECT R.room_number AS "Номер", COUNT(A.accom_ID) AS total
FROM Rooms R LEFT JOIN Accommodations A
ON R.room_number = A.accom_room_number
GROUP BY R.room_number
HAVING COUNT(A.accom_ID) < 2
ORDER BY total DESC, R.room_number ASC;


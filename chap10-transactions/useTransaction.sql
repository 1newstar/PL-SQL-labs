--PREVIOUSLY DELETE ROOMS WITH NUMBERS 788 AND 789 IF EXISTS
DELETE FROM ROOMS
WHERE room_number = 788 OR room_number = 789;

--ADD ROOMS WITH NUMBERS 788 AND 789
INSERT INTO ROOMS VALUES (789, 8, 10000.00, 'apartment');
INSERT INTO ROOMS VALUES (788, 2, 1000.00, 'studio');

--CREATE SAVEPOINT point1
SAVEPOINT point1;
  INSERT INTO ROOMS VALUES (107, 2, 3503.46, 'luxe');
--ROLLBACK TO SAVEPOINT point1
ROLLBACK TO point1;
COMMIT;

SELECT * FROM ROOMS;


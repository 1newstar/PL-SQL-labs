--CREATE DML-TRIGGER not_create_new_room WHICH PROHIBIT INSERTION OF NEW RECORDS TO TABLE Rooms
CREATE OR REPLACE TRIGGER not_create_new_room
BEFORE INSERT ON ROOMS FOR EACH ROW

DECLARE
  roomsCount NUMBER;

BEGIN
  SELECT COUNT(*) INTO roomsCount FROM ROOMS;
  
  IF roomsCount >= 12 THEN
    raise_application_error(-20001, 'Добавить новый номер невозможно');
  END IF;
END;


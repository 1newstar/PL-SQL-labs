--CREATE DML-TRIGGER update_rooms WHICH PROHIBITS OF UPDATE DATA ABOUT ROOM WITH NUMBER 788
CREATE OR REPLACE TRIGGER update_rooms
BEFORE UPDATE ON ROOMS FOR EACH ROW

DECLARE
ban_update EXCEPTION;

BEGIN
  IF(:new.room_number = 788) THEN
    RAISE ban_update;
  END IF;
  
  EXCEPTION
  WHEN ban_update
  THEN
  DBMS_OUTPUT.PUT_LINE('Изменение данных о номере 788 запрещено');
  DBMS_OUTPUT.PUT_LINE('Запрашиваемые изменения отменены');
  :new.room_number := :old.room_number;
  :new.r_count     := :old.r_count;
  :new.r_price     := :old.r_price;
  :new.r_comfort   := :old.r_comfort;
END update_rooms;


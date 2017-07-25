--CREATE PROCEDURE Apartment_rooms WHICH SHOWS THE ROOMS WITH THE COMFORT OF AN apartment
CREATE OR REPLACE PROCEDURE Apartment_rooms IS
  p_number NUMBER;
  p_price NUMBER;

CURSOR cur IS
	SELECT DISTINCT room_number, r_price
	FROM Rooms
	WHERE r_comfort LIKE 'apartment';

BEGIN
  OPEN cur;
    DBMS_OUTPUT.PUT_LINE('Список номеров, имеющих комфортность apartment: ');
    DBMS_OUTPUT.PUT_LINE('Номер Цена');
    FETCH cur INTO p_number, p_price;
    WHILE cur%FOUND LOOP
      DBMS_OUTPUT.PUT_LINE(' ' || p_number || ' ' || p_price);
      FETCH cur INTO p_number, p_price;
    END LOOP;
  CLOSE cur;
END apartment_rooms;


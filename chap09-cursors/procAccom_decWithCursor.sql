--CREATE PROCEDURE Accom_dec WHICH INSERT INTO TABLE December AND SHOW ACCOMMODATIONS FOR DECEMBER 2016
--BEFORE THIS NEED TO CREATE A TABLE December
CREATE OR REPLACE PROCEDURE Accom_dec IS
  p_accom_ID NUMBER;
  p_accom_room_number NUMBER;
  p_accom_client_ID NUMBER;
  p_accom_arrival_date DATE;
  p_accom_departure_date DATE;

  CURSOR dec_cur IS
    SELECT * FROM ACCOMMODATIONS
    WHERE TRUNC(accom_arrival_date)   BETWEEN '01-12-2016' AND '31-12-2016' AND
          TRUNC(accom_departure_date) BETWEEN '01-12-2016' AND '31-12-2016';
  BEGIN
    OPEN dec_cur;
    FETCH dec_cur INTO p_accom_ID, p_accom_room_number, p_accom_client_ID,
                       p_accom_arrival_date, p_accom_departure_date;
    DBMS_OUTPUT.PUT_LINE('Количество найденных записей: ' || (dec_cur%ROWCOUNT+1));
    WHILE dec_cur%FOUND LOOP
      INSERT INTO DECEMBER VALUES (p_accom_ID, p_accom_room_number,
        p_accom_client_ID, p_accom_arrival_date, p_accom_departure_date);
      DBMS_OUTPUT.PUT_LINE(p_accom_ID || ' ' || p_accom_room_number || ' ' ||
      p_accom_client_ID || ' ' || p_accom_arrival_date || ' ' || p_accom_departure_date);
      FETCH dec_cur INTO p_accom_ID, p_accom_room_number, p_accom_client_ID,
                         p_accom_arrival_date, p_accom_departure_date;
    END LOOP;
  CLOSE dec_cur;
END accom_dec;


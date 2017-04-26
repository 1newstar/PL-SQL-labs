--CREATE VIEW WHICH WILL BE DISPLAYING SURNAME AND INITIALS OF CLIENTS AND HIDING OTHER FIELDS
BEGIN
  FOR i IN (SELECT view_name FROM user_views
          WHERE view_name = 'list_user_view') LOOP
    EXECUTE IMMEDIATE 'DROP VIEW list_user_view';
  END LOOP;
END;
/
CREATE VIEW list_user_view
AS
SELECT (c_surname || ' ' || SUBSTR(c_name, 1, 1)
         || '.' || SUBSTR(c_patronymic, 1, 1))
AS "ФИО"
FROM Clients;

--SELECT ALL FIELDS FROM VIEW
SELECT * FROM list_user_view;


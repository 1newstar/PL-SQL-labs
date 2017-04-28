--CREATE FUNCTION Accom_Select_UserFullName_ByID WHICH RETURNS FULLNAME OF THE CLIENT BY HIS ID
--WITH PARAMETER @p_client_ID
CREATE OR REPLACE FUNCTION Accom_Select_UserFullName_ByID (
  p_client_ID IN NUMBER) RETURN VARCHAR2
  AS retClientFullName VARCHAR2(60);
BEGIN
  SELECT c_surname || ' ' || c_name || ' ' || c_patronymic
  INTO retClientFullName
  FROM CLIENTS
  WHERE client_ID = p_client_ID;
  RETURN retClientFullName;
END Accom_Select_UserFullName_ByID;


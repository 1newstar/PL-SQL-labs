--EXAMPLE OF CALLING Accom_Select_UserFullName_ByID FUNCTION IN QUERY
SELECT client_ID, Accom_Select_UserFullName_ByID(client_ID) AS fullname
FROM CLIENTS
WHERE client_ID = 3;

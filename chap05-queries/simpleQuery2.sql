--SELECT AVERAGE PRICE FOR EACH TYPE OF COMFORT
SELECT r_comfort AS "������������", AVG(r_price) AS "������� ����"
FROM Rooms
GROUP BY r_comfort;


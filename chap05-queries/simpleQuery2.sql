--SELECT AVERAGE PRICE FOR EACH TYPE OF COMFORT
SELECT r_comfort AS "Комфортность", AVG(r_price) AS "Средняя цена"
FROM Rooms
GROUP BY r_comfort;


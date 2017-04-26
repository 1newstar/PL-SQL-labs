--CREATE VIEW WHICH WILL BE DISPLAYING TYPES OF COMFORT WITH AGGREGATED PRICES FOR EACH OF TYPE
--BEGIN
  FOR i IN (SELECT view_name FROM user_views
          WHERE view_name = 'sum_price_view') LOOP
    EXECUTE IMMEDIATE 'DROP VIEW sum_price_view';
  END LOOP;
--END;

CREATE VIEW sum_price_view
AS
SELECT R.r_comfort, SUM(R.r_price) AS price
FROM Rooms R
GROUP BY R.r_comfort;

--SELECT ALL FIELDS FROM VIEW
SELECT * FROM sum_price_view;


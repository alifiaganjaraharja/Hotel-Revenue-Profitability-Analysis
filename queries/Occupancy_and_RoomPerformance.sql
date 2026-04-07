-- this query is to answer question number 2, which is to find out the overall performances of these key metrics (Occupancy Rate, ADR, RevPAR, Managed vs All Guests)
SELECT 
  ROUND(AVG(Occupancy_Rate),2) AS Average_Occupancy_Rate,
  ROUND(AVG(ADR),2) AS Average_ADR,
  ROUND(AVG(RevPAR),2) AS Average_RevPAR,
  ROUND(AVG(Occupancy_Managed_Guests),2) AS Avg_Occupancy_Managed,
  ROUND(AVG(Occupancy_All * 100),2) AS Avg_Occupancy_All
FROM `hoteldata-455008.Hotel.overall`;
-- This query is to answer the fourth question on Guest Satisfaction and find out the Average Review Score, Complaints, and Compliments of this hotel
SELECT
  ROUND(AVG(Average_Review_Score),2) AS Average_Review_Score,
  SUM(Complaints) AS Total_Complaints,
  SUM(Complaints) AS Total_Compliments
FROM
`hoteldata-455008.Hotel.overall`;
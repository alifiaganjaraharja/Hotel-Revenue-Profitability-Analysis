-- This query is to answer the fifth question around Marketing Efficiency by comparing the Marketing Spend and Total Revenue of this hotel
SELECT
  DATE_TRUNC(Date, MONTH) AS Month, -- Truncate to the first day of the month
  SUM(Marketing_Spend) AS Total_Marketing_Spend,
  SUM(Total_Revenue) AS Total_Revenue,
  ROUND(SUM(Total_Revenue) / SUM(Marketing_Spend), 2) AS Revenue_Per_Marketing_Dollar
FROM `hoteldata-455008.Hotel.overall`
GROUP BY Month
ORDER BY Month ASC;
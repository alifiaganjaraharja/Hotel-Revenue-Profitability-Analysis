-- This query is to answer the first question around Revenue and Profitability (Total Revenue, Room Revenue, Net Profit, and Profit Margin) of this hotel
SELECT 
  DATE_TRUNC(Date, MONTH) AS Month, -- Truncate to the first day of the month
  SUM(Total_Revenue) AS Total_Revenue,
  SUM(Room_Revenue) AS Total_Room_Revenue,
  SUM(Total_Revenue-Total_Costs) AS Net_Profit,
  ROUND((SUM(Total_Revenue) - SUM(Total_Costs)) / SUM(Total_Revenue) * 100,2) AS Profit_Margin
FROM `hoteldata-455008.Hotel.overall`
GROUP BY Month
ORDER BY Month ASC;

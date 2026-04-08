-- This query is to answer some of the third questions about Channel Analysis
SELECT
  Booking_Channel,
  SUM(New_Bookings) AS Total_New_Bookings,
  SUM(No_Shows) AS Total_No_Shows,
  SUM(Cancellations) AS Total_Cancellations
FROM `hoteldata-455008.Hotel.overall`
GROUP BY Booking_Channel
ORDER BY Total_New_Bookings DESC;
# [Kaggle] - Hotel Revenue & Profitability Analysis Project
By Alifia Ganjaraharja

This repository contains a data analysis project that utilizes SQL to analyze hotel revenue, profitability, and booking trends to optimize pricing and operational efficiency. This project utilizes a public dataset which is available on Kaggle Datasets.

## Project Overview: 
This project utilizes a public dataset available on Kaggle Datasets, and it's ideal for practicing Beginner to Intermediate SQL, including Aggrerate Functions (SUM, AVG, and COUNT), CASE functions and performance optimization on large datasets.
1. **Goal**: Analyze hotel revenue, profitability, and booking trends to optimize pricing and operational efficiency.

   **Sample Questions to Answer**:
   - Revenue & Profitability - How is the Total Revenue, Room Revenue, Net Profit, and Profit Margin Patterns of this hotel on 2024? 
   - Occupancy & Room Performance - How is the overall performances of these key metrics (Occupancy Rate, ADR, RevPAR, Managed vs All Guests) for this hotel? and what that number means?
   - Booking Trends - How is the trend and what pattern can be found on key metrics around Booking Trends (New Booking, No Shows, Cancellations, and Channel Analysis)? What does that number means?
   - Guest Satisfaction - Analyze and found out all Guest Satisfaction Key Metrics such as Average Review score, Complaints, and Compliment
   - Marketing Efficiency - Analyze and found out how Marketing Spend versus Revenue within this hotel
     
2. **Dataset**: The Dataset used for this project was downloaded from Kaggle and available as a public dataset. You can access ([here](https://www.kaggle.com/datasets/omarsobhy14/hotel-revenue2024)) and query it directly in the BigQuery console with a free account, or use any SQL flavor you like (PostgreSQL, SQL, MySQL, or others).

4. **Tools Used**: SQL (For data extraction & aggregation).

## Result, Findings, and Recommendations (Based on 13 Key Metrics)

1. **Occupancy Rate Trends**: For the Occupancy Rate Trends, I have calculated and analyzed the trends by Season, Holiday, and Weekday for this hotel.
- Occupancy rate based on Season:
  
| **Season**                   | **Average Occupancy Rate**  | **Average Occupancy Managed**  | **Average Occupancy All**  |  
|------------------------------|-----------------------------|--------------------------------|----------------------------|
| Spring                       |  77.84                      | 77.84                          | 78.0                       |
| Winter                       |  77.77                      | 77.77                          | 78.0                       |
| Summer                       |  76.7                       | 76.7                           | 77.0                       |

Based on the data above, spring recorded the highest occupancy for this hotel, not only in terms of occupancy rate but also in terms of managed occupancy and overall occupancy. 

- Occupancy rate based on Weekday:

| **Weekday**         | **Average Occupancy Rate**  | **Average Occupancy Managed**  | **Average Occupancy All**  |  
|---------------------|-----------------------------|--------------------------------|----------------------------|
| 6 (Saturday)        |  78.07                      | 78.07                          | 78.07                      |
| 2 (Tuesday)         |  77.76                      | 77.76                          | 77.76                      |
| 5 (Friday)          |  77.73                      | 77.73                          | 77.73                      |
| 3 (Wednesday)       |  77.4                       | 77.4                           | 77.4                       |
| 1 (Monday)          |  77.29                      | 77.29                          | 77.29                      |
| 7 (Sunday)          |  77.2                       | 77.2                           | 77.2                       |
| 4 (Thursday)        |  76.93                      | 76.93                          | 76.93                      |

Based on the data above, Saturday recorded the highest occupancy for this hotel, not only in terms of occupancy rate but also in occupancy managed and Occupancy All.

- Occupancy rate based on Holiday:

| **Holiday**                   | **Average Occupancy Rate**  | **Average Occupancy Managed**  | **Average Occupancy All**  |  
|-------------------------------|-----------------------------|--------------------------------|----------------------------|
| 1 (Holiday)                   |  78.0                       | 77.62                          | 77.62                      |
| 0 (Not Holiday)               |  77.0                       | 77.47                          | 77.47                      |

And based on the data above, Holiday recorded the highest occupancy for this hotel, not only in terms of occupancy rate but also in occupancy managed and Occupancy All. 

From all three analyses, it can be said that the Occupancy Rate peaked during the Spring, especially on Saturdays and holidays. At the same time, the lowest Occupancy occurred during the Summer, especially on Thursdays and not on holidays. My actionable recommendation for this hotel is to launch targeted promotions during low-occupancy periods to boost room bookings. 

2. **ADR & RevPAR Trends**: For the ADR & RevPAR trends analysis, the results are as follows.

| **Season**                    | **Month**                   | **Avg_ADR**                    | **Avg_RevPAR**             |  
|-------------------------------|-----------------------------|--------------------------------|----------------------------|
| Winter                        | 2024-01-01                  | 124.84                         | 96.94                      |
| Winter                        | 2024-02-01                  | 125.86                         | 98.25                      |
| Spring                        | 2024-03-01                  | 125.47                         | 97.77                      |
| Summer                        | 2024-07-01                  | 123.1                          | 89.16                      |

From the results, it is evident that the hotel's ADR and RevPAR fluctuated throughout the months, particularly in January, February, March, and July. While my previous analysis showed that the highest occupancy rate occurred during the spring season, the data above indicate that the highest average ADR was recorded in the winter season. This suggests that a higher occupancy rate does not necessarily lead to a higher ADR.

Based on this analysis, my recommendation for the hotel is to focus its pricing strategy on high-demand months to maximize yield, and to consider offering value-added packages during off-peak periods to maintain ADR.

3. **Booking Trends**: Next, for the Booking Trends analysis, the results of my analysis are as follows.

| **Month**    | **Total New Bookings**      | **Total Check-ins**            | **Total No Shows**         | **Total Cancelation**      |**Booking Checkin Gap**    |
|--------------|-----------------------------|--------------------------------|----------------------------|----------------------------|---------------------------|
| 2024-01-01   | 92                          | 41                             | 14                         | 20                         | 51                        |
| 2024-02-01   | 65                          | 44                             | 36                         | 15                         | 21                        |
| 2024-03-01   | 56                          | 26                             | 25                         | 12                         | 30                        |
| 2024-07-01   | 89                          | 45                             | 34                         | 17                         | 44                        |

From these results, I identified a gap between the total new bookings and total check-ins each month for this hotel, with the largest gap occurring in January, a difference of 51. This finding may require further analysis to determine the exact cause. I also discovered that the number of no-shows peaked in February, while total cancellations were highest in January.

Based on these insights, I recommend implementing stricter cancellation policies or offering incentives for non-refundable bookings during these periods.

4. **Profit Margin**: Profit Margin analysis is one of the most important Key Metrics, and the result of my analysis is as follows.

| **Month**                     | **Total Revenue**           | **Total Costs**                | **Profit Margin**          |  
|-------------------------------|-----------------------------|--------------------------------|----------------------------|
| 3                             | 1035000                     | 261500                         | 74.73                      |
| 1                             | 1680000                     | 425000                         | 74.7                       |
| 2                             | 1558000                     | 422500                         | 72.88                      |
| 7                             | 1554000                     | 576500                         | 62.9                       |

From the results, the highest profit margin occurred in March, aligning with the spring season. This suggests that higher occupancy rates may contribute to increased profit margins for this hotel. Conversely, the lowest profit margin was recorded in July, a month that also saw the highest total costs.

I recommend optimizing operational efficiency and reducing expenses during low-traffic periods to help maintain profitability.

5. **Marketing Spend VS Revenue**: Next, I analyzed the marketing spend and its impact on revenue for this hotel. Below are the results of my analysis.

| **Month**                     | **Total Revenue**           | **Total Marketing Spend**      | **Revenue per Marketing Spend**   |  
|-------------------------------|-----------------------------|--------------------------------|-----------------------------------|
| 1                             | 1680000                     | 1850000                        | 91.0                              |
| 3                             | 1035000                     | 1150000                        | 90.0                              |
| 2                             | 1558000                     | 1735000                        | 90.0                              |
| 7                             | 1554000                     | 1800000                        | 86.0                              |

Based on the results above, January recorded the highest marketing spend at 1,850,000 and also achieved the highest marketing ROI at 90.91%. This suggests that January's marketing campaigns were the most effective, generating more revenue per unit of marketing spend. Conversely, July had the lowest ROI at 86.33%, indicating lower efficiency in converting marketing spend into revenue.

My recommendations are to analyze January’s marketing strategy—including channel mix, timing, and targeting—and consider applying similar tactics in other months. Additionally, July’s marketing approach should be re-evaluated for potential inefficiencies or overspending.

6. **Market Segment Performance**: Understanding how each market segment performs is crucial for hotel management to identify which segments contribute most to occupancy rates. Below is my analysis of market segment performance.

| **Guest Type**                | **Average ADR**             | **Average Occupancy Rate**     | **Average Review Score**          |  
|-------------------------------|-----------------------------|--------------------------------|-----------------------------------|
| Business                      | 124.83                      | 0.78                           | 4.57                              |
| Leisure                       | 124.68                      | 0.77                           | 4.56                              |

The Average Daily Rate (ADR) is slightly higher for business guests at 124.83 compared to 124.68 for leisure guests, indicating that both segments contribute almost equally in revenue per room night. However, the occupancy rate is higher for business guests, suggesting more consistent room utilization from this segment. Review scores are also slightly better among business guests (4.57 vs. 4.56), hinting at a comparable-but—possibly more consistent—satisfaction level.

While both guest types perform similarly, the business segment edges out slightly in profitability and guest satisfaction. Therefore, my recommendation is for the hotel to maintain strong relationships with corporate clients and prioritize business-related amenities. At the same time, the hotel should look for ways to improve satisfaction among leisure guests by offering experience-focused services such as personalized packages and add-ons.

7. **Booking Channel Insights**: Like other key metrics, booking channel insights are crucial because they help hotel management understand where most customers make their final room bookings. Below is my analysis.

| **Guest Type**                | **Total**                   | 
|-------------------------------|-----------------------------|
| Direct                        | 62                          | 
| OTA                           | 47                          | 

Based on the data above, direct bookings account for a larger share of total reservations (62 vs. 47), indicating that many guests prefer to book directly with the hotel, possibly due to loyalty programs, personalized offers, or greater trust. However, a higher booking volume does not necessarily translate into better occupancy. (For more details, I will explain and show data where direct bookings had more no-shows and booking-to-check-in gaps.) 

[📄 View the visualization of Booking Channel VS Booking trend here](https://github.com/alifiaganjaraharja/-Kaggle--HotelRevenue-ProfitabilityAnalysis/blob/main/BookingChannel_Vs_BookingTrend.pdf)

As shown in the visualization above, a higher volume of total bookings via the Direct channel does not necessarily lead to better occupancy. Compared to the OTA channel, the booking-to-check-in gap is larger for Direct bookings. This trend is also reflected in the total check-ins between the two channels.

My recommendations are twofold: first, strengthen the Direct channel by addressing the high no-show rate through flexible yet firm cancellation policies, payment guarantees, or automated reminder systems; and second, leverage the OTA channel’s success by maintaining a strong presence and potentially offering exclusive value-added services to encourage OTA users to become repeat Direct bookers.

8. **Guest Country Trends**: Another important key metric I analyzed in this hotel dataset is guest country trends. Understanding these trends is crucial as it can inform several strategic decisions. Below is my analysis.

| **Guest Country**             | **Total_Guest**             | 
|-------------------------------|-----------------------------|
| USA                           | 29                          | 
| Germany                       | 21                          | 
| UK                            | 21                          | 
| France                        | 13                          | 
| Spain                         | 13                          | 
| Italy                         | 12                          | 

As shown above, the USA is the top source of guests with 29 visitors over several months, indicating a strong market presence or effective marketing in the U.S. Germany and the UK follow closely, suggesting these are also high-potential markets to target. Western European countries such as France, Spain, and Italy also make up a significant portion of the guest list, which may reflect regional travel trends, partnerships, or flight connectivity.

Based on this data, my recommendation for the hotel is to continue focusing on digital marketing, retargeting ads, and travel promotions in the USA, UK, and Germany, where demand is already strong. Additionally, consider providing amenities or services tailored to preferences from these top countries, such as breakfast options, TV channels, or concierge services, to enhance guest satisfaction.

9. **Complaints vs Compliments**: Another key metric I analyzed is the number of complaints and compliments received from guests over a period of time. This is important for understanding overall customer satisfaction at the hotel. Below are the results:
   
| **Month**                     | **Total Complaints**        | **Total Compliments**          | **Average Review Score**          |  
|-------------------------------|-----------------------------|--------------------------------|-----------------------------------|
| 1                             | 32                          | 30                             | 4.6                               |
| 2                             | 43                          | 22                             | 4.58                              |
| 3                             | 19                          | 20                             | 4.61                              |
| 7                             | 33                          | 35                             | 4.5                               |

Based on the data above, a spike in total complaints occurred in the second month (February), with 43 complaints and only 22 compliments. In contrast, the highest review score was recorded in March (approximately 4.61), with fewer complaints (19) and a balanced number of compliments (20). This suggests strong overall satisfaction and consistent service during that period.

My recommendation is to investigate the high volume of complaints in February by analyzing specific feedback themes, such as staffing, cleanliness, or check-in delays. Then, leverage the success of March by identifying the factors that contributed to higher satisfaction, whether it was optimal staffing levels, guest mix, promotions, or other elements, and consider replicating those strategies in other months.

10. **Review Score Impact**: Next, I analyzed how review scores impact RevPAR and ADR. Below are the results of my analysis.
    
| **review Score Gruoup**       | **Average ADR**             | **Average RevPAR**             | **Room Nights**                   |  
|-------------------------------|-----------------------------|--------------------------------|-----------------------------------|
| High(>=4.2)                   | 124.74                      | 95.29                          | 109                               |

From the results above, the data shows that guests who rated their stay 4.2 or higher (review score ≥ 4.2) are associated with stronger revenue performance. The average ADR (Average Daily Rate) for this group is 124.74, indicating a higher willingness to pay for quality service. The average RevPAR (Revenue per Available Room) is 95.29, confirming that not only are rates higher, but occupancy is likely better as well.

The business insight here is clear: high guest satisfaction directly correlates with profitability. Enhancing service quality, cleanliness, and staff responsiveness can likely increase the number of 4.2+ reviews, thereby boosting both ADR and RevPAR.

My recommendation for this hotel is to continue focusing on reputation management by actively responding to guest feedback, encouraging satisfied guests to leave reviews, investing in staff training and guest experience improvements, and monitoring revenue performance to drive further growth.

11. **Revenue vs. Room Revenue**: Another important key metric I analyzed is Revenue versus Room Revenue. This metric is crucial because the main service of a hotel is selling its rooms. By comparing Total Revenue with Room Revenue, we can determine how much the rooms contribute to the hotel’s overall revenue. Below are the results of my analysis.

| **Month**                     | **Total Room Revenue**      | **Total Revenue**              | **Room Revenue Contribution**     |  
|-------------------------------|-----------------------------|--------------------------------|-----------------------------------|
| 2                             | 1384000                     | 1558000                        | 89.0                              |
| 7                             | 1373000                     | 1554000                        | 88.0                              |
| 1                             | 1465000                     | 1680000                        | 87.0                              |
| 3                             | 902000                      | 1035000                        | 87.0                              |

From the results above, it is evident that Room Revenue plays a pivotal role for this hotel, accounting for 87–89% of the total revenue each month. This indicates that room bookings are the primary source of revenue for the hotel. February has the highest room revenue contribution at 89%, while March has the lowest in this range at 87%, which is still quite high.

My suggestion for this hotel is to focus on optimizing room sales strategies such as pricing, upselling, and occupancy management. Additionally, explore opportunities to grow revenue from other services like F&B, spa, or events to diversify income and reduce reliance on room bookings. Finally, investigate whether the remaining 11–13% of non-room revenue can be scaled to improve overall profitability.
  
12. **Fixed vs. Variable Cost Trends**: Next, I analyzed and compared fixed and variable costs. This key metric is important to better understand how effectively each cost is spent by this hotel and how to navigate every cost. Here is my result.

| **Month**        | **Total Fixed Costs**    | **Total Variable Costs**   | **Total Costs**          |**Fixed Costs Percentage**     |**Variable Costs Percentage**     |
|------------------|--------------------------|----------------------------|--------------------------|-------------------------------|----------------------------------|
| 7                | 151000                   | 1959500                    | 576500                   | 7.15                          | 92.85                            |
| 2                | 166000                   | 2046500                    | 422500                   | 7.5                           | 92.5                             |
| 1                | 185000                   | 2205000                    | 425000                   | 7.74                          | 92.26                            |
| 3                | 115000                   | 1359500                    | 261500                   | 7.8                           | 92.2                             |

From the data above, the insights that I can summarize from these are that across all months, the Variable Cost proportion of this hotel is high (Variable costs consistently make up around 92% of total costs. This means that the hotel's expenses scale heavily with activity levels such as Guests, Services, and Amenities. While for fixed costs proportion is low and stable around 7-8%. This means that the hotel's expenses on salaries, rent, or maintenance remain stable, which is common in businesses that scale per customer.

Then my suggestion regarding this for this hotel is to monitor Variable Cost Drivers since Variable costs are dominating, by focusing on efficiency i guest-related services, utilities, and consumables. 
    
13. **Managed Guests vs. All Guests**: The Last key metric I analyzed is to compare Managed Guests vs. All Guests. Managed guests are guests of the hotel that actually served, including guests who checked in and were managed by the staff, while All Guests refer to everyone who made a booking, regardless of whether they checked in, canceled, or even were a no-show. And by analyzing it, it gives the hotel insight into both demand and operational performance. Here's my result regarding this:

| **Month**   | **Avg Revenue Managed guests** | **Avg RevPAR Managed Guests** | **Avg Occupancy Managed Guests**  |**Avg RevPAR All**     |**Avg Occupancy All**     |
|-------------|--------------------------------|-------------------------------|-----------------------------------|-----------------------|--------------------------|
| 7           | 848.39                         | 4.6                           | 77.58                             | 4.6                   | 0.78                     |
| 2           | 851.38                         | 4.58                          | 77.97                             | 4.58                  | 0.78                     |
| 1           | 853.16                         | 4.61                          | 77.84                             | 4.61                  | 0.78                     |
| 3           | 845.33                         | 4.5                           | 76.7                              | 4.5                   | 0.77                     |

From the data above, Revenue from managed guests is fairly stable, hovering around 845 to 853 per month. This shows consistent income from this segment. Meanwhile, the RevPAR (Revenue per Available Room) for Managed Guests and All guests is nearly identical in each month (around 4.5 to 4.6), which suggests that managed guests contribute proportionally to overall revenue per room. However, Occupancy for Managed Guests is around 77%, while overall occupancy (all guests) is around 0.77-0.78 (or 77-78%). This means that Managed Guests represent almost the entire occupancy share, or they have very similar occupancy levels to the total guest mix. Month 7 shows a slight dip in all metrics compared to the earlier months, which could indicate seasonality or a change in guest patterns.

Overall insights:
Managed guests contribute significantly and consistently to revenue and occupancy. The similarity in occupancy and RevPAR between managed guests and all guests suggests that managed guests are a major driver of the hotel’s performance. Any marketing or service improvements targeted at managed guests will likely impact overall hotel performance strongly.

Then, my suggestion for this hotel, based on this Managed Guest vs. All guests data, is to strengthen Relationships with Managed Guest Segments, given their steady revenue and occupancy contribution, nurture this segment through loyalty programs, corporate rates, or personalized services. Prioritize Managed Guest Retention, since they perform equally or better than the overall average, ensure consistent service quality, convenience, and follow-up communication to retain them. And leverage data to expand Managed Guest Base, use insights from current Managed Guests to target similar profiles (e.g., long-term corporate stays, business travelers) through focused marketing or partnership.

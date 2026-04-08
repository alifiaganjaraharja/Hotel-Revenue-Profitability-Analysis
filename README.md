# Hotel Revenue & Profitability Analysis Project
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

4. **Tools Used**: SQL/BigQuery (For data extraction & aggregation).

## Result and Findings

Question 1: Revenue & Profitability - How is the total Revenue, Room Revenue, Net Profit, and Profit Margin Patterns of this hotel on 2024?

|**Date**   | **Total Revenue** |**Total Room Revenue**  |**Net Profit**  |**Profit Margin**  |
|-----------|-------------------|------------------------|----------------|-------------------|
|2024-01-01	|$1,680,000         |$1,465,000              |$1,255,000      |74.7               |
|2024-02-01	|$1,558,000         |$1,384,000              |$1,135,500      |72.88              |
|2024-03-01	|$1,035,000         |$  902,000              |$  773,500      |74.73              |
|2024-07-01	|$1,554,000         |$1,373,000              |$  977,500      |62.9               |
 

Question 2: Occupancy & Room Performance - How is the overall performances of these key metrics (Occupancy Rate, ADR, RevPAR, Managed vs All Guests) for this hotel? and what that number means?

|**Average Occupancy Rate**   | **Average ADR**   |**Average RevPAR**      |**Average Occupancy Managed**  |**Average Occupancy All**  |
|-----------------------------|-------------------|------------------------|-------------------------------|---------------------------|
|  0.77	                      |  124.74           |  95.29                 |  77.49                        |  77.49                    |

Question 3: Booking Trends - How is the trend and what pattern can be found on key metrics around Booking Trends (New Booking, No Shows, Cancellations, and Channel Analysis)? What does that number means?

|**Date**   | **Total New Bookings** |**Total No Shows**  |**Total Cancellation**  |
|-----------|------------------------|--------------------|------------------------|
|2024-01-01	|  92                    |  41                |  20                    |
|2024-02-01	|  65                    |  36                |  15                    |
|2024-03-01	|  56                    |  25                |  12                    |
|2024-07-01	|  89                    |  34                |  17                    |

I separated the Channel Analysis

|**Booking Channel**   | **Total New Booking**  |**Total No Shows**  |**Total Cancellation**  |
|----------------------|------------------------|--------------------|------------------------|
|Direct   	           | 179                    |  65                |  32                    |
|OTA                   | 123                    |  71                |  32                    |

Question 4: Guest Satisfaction - Analyze and found out all Guest Satisfaction Key Metrics such as Average Review score, Complaints, and Compliment

|**Average Review Score**   | **Total Complaints**  |**Total Compliments**  |
|---------------------------|-----------------------|-----------------------|
| 4.57     	                | 127                   | 127                   |

Question 5: Marketing Efficiency - Analyze and found out how Marketing Spend versus Revenue within this hotel

|**Month**  | **Total Marketing Spend** |**Total Revenue**  |**Revenue Per Marketing Dollar**  |
|-----------|---------------------------|-------------------|----------------------------------|
|2024-01-01	|  1,850,000                |  1,680,000        |  0.91                            |
|2024-02-01	|  1,735,000                |  1,558,000        |  0.9                             |
|2024-03-01	|  1,150,000                |  1,035,000        |  0.9                             |
|2024-07-01	|  1,800,000                |  1,554,000        |  0.86                            |

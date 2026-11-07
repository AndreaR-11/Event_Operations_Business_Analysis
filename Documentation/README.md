# Event Operations & Business Performance Analysis

## Project Overview
This project analyses the operational and financial performance of a fictional corporate event management business using Excel and MySQL. The analysis examines attendance, delivery formats, client industries, workshop topics, participant feedback, and event delays to identify performance patterns, highlight operational challenges, and develop practical business recommendations.

## Business Problem
The business needs a clearer understanding of which event formats, corporate-client industries, and workshop topics perform best. It also needs to identify operational issues that may affect attendance, participant satisfaction, and financial performance. 

This project addresses the following questions:
- How is the business performing overall?
- Do online or in-person events deliver better results?
- Which client industries generate the strongest financial contribution?
- Which workshop topics perform best?
- How are event delays associated with attendance, feedback, and financial performance?

## Tools and Technologies
- **Microsoft Excel:** Data validation, calculated columns, PivotTables, and dashboard development.
- **MySQL & SQL:** Database management, data grouping, aggregations, and performance analysis.
- **GitHub:** Project documentation and portfolio presentation.

## Dataset
The project uses a synthetic dataset containing 50 corporate event records. The data includes categorical variables (delivery format, client industry, workshop topic) and quantitative metrics (registrations, attendees, delivery cost, revenue, feedback ratings). *Note: All records are synthetic and created for portfolio and analytical practice.*

## Methodology
Data preparation and validation were conducted on the 50 event records to ensure accuracy across attendance counts and financial values, alongside the creation of calculated metrics (Net Contribution, Attendance Rate). Analysis was executed using Excel PivotTables and dashboards to compare categorical performance, supported by MySQL queries utilizing aggregation functions and calculated fields to extract distinct operational insights.

## Key Findings

- **Overall Business Performance:** The 50 events generated AED 142,750 in revenue against AED 68,500 in delivery costs, resulting in an AED 74,250 net contribution. The business maintained an 81.86% overall attendance rate and an average participant feedback score of 4.49/5.
- **Delivery Format:** Online events consistently outperformed in-person events across attendance rates (83.69% vs 78.80%), total net contribution, participant feedback, and delivery reliability (only a 3.57% delay rate compared to 22.73% for in-person).
- **Client Industry:** Technology and Financial Services were the strongest-performing industries. Conversely, Healthcare demonstrated the weakest attendance (72.99%) and financial contribution, driven heavily by a 50% event delay rate.
- **Workshop Topics:** 'Excel for Business' generated the highest net contribution overall. 'SQL Basics' achieved the highest attendance rate (84.67%) and participant feedback (4.68/5). 
- **Impact of Event Delays:** Although only 6 events were delayed, they caused severe performance drops, correlating with lower attendance (67.70%), reduced feedback (4.02/5), and a significantly lower contribution margin (33.95% vs 54.33% for on-time events). Five of the six delays occurred within the Healthcare sector.

## Business Recommendations
1. **Explore online delivery opportunities:** Online events demonstrate stronger attendance, participant feedback, and financial contribution.
2. **Prioritise promising client segments:** Focus growth efforts on Technology and Financial Services based on strong baseline performance.
3. **Review workshop performance:** Maintain the financial performance of Excel for Business while investigating opportunities to scale SQL Basics.
4. **Improve operational planning:** Investigate the root causes behind delays, particularly targeting in-person events and the Healthcare sector.
5. **Monitor key performance indicators:** Regularly track attendance, participant feedback, contribution margins, and delays to support proactive decision-making.

## Project Limitations
- The dataset is a small, synthetic sample (50 records) intended for analytical demonstration.
- Net contribution figures (presented in raw AED) account only for direct delivery costs, excluding broader business overhead.
- Findings identify data correlations and associations, rather than proven cause-and-effect relationships. Conclusions regarding event delays should be interpreted cautiously due to the small sample size (6 events).

## Project Structure

```text
Event_Operations_Business_Analysis/
│
├── 01_Data/
│   └── event_operations_data.csv
│
├── 02_SQL/
│   ├── 01_data_validation.sql
│   ├── 02_overall_performance.sql
│   ├── 03_delivery_format_analysis.sql
│   ├── 04_industry_analysis.sql
│   ├── 05_workshop_topic_analysis.sql
│   └── 06_delay_analysis.sql
│
├── 03_Results/
│   ├── overall_performance.csv
│   ├── delivery_format_results.csv
│   ├── industry_results.csv
│   ├── workshop_topic_results.csv
│   ├── delay_analysis_results.csv
│   └── query_screenshots/
│
├── 04_Excel/
│   └── Event_Operations_Business_Analysis.xlsx
│
├── 05_Documentation/
│   └── Business_Insights.md
│
├── database_backup.sql
│
└── README.md
```
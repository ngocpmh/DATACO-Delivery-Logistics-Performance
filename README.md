## Project Background
ABC is a leading logistics service provider with a comprehensive presence across all countries in Southeast Asia. Offering a wide range of logistics solutions—from transportation to warehousing—Ryo has established itself as a trusted partner for numerous e-commerce businesses. Alongside this rapid growth, ABC faces several critical challenges in managing its supply chain and optimizing operational efficiency. ABC is committed to leveraging advanced data-driven approaches to tackle these problems.
- Late delivery risk: The company lacks clear insights into the root causes of frequent delivery delays, which negatively impact customer satisfaction and brand reputation.
- Delivery optimization: An analysis  of ABC's delivery process (improving route planning, selecting appropriate shipping methods etc)  to reduce delivery times and costs while increasing on-time delivery rates.
- Regional logistics performance: Comparing delivery timeliness and shipping costs across various regions to identify high-performing areas and regions requiring operational improvements.

An interactive PowerBI dashboard can be downloaded here.
The SQL queries utilized to inspect and perform quality checks can be found here.
The SQL queries utilized to clean, organize, and prepare data for the dashboard can be found here.
Targeted SQL queries regarding various business questions can be found here.

## Data structure & Initial check
The raw dataset contains all information combined into a single comprehensive table. To provide a clearer understanding of the data structure and the relationships between different columns, an Entity-Relationship Diagram (ERD) is used.
- CUSTOMERS: stores detailed information about customers, including their ID, name, contact info, location, and segment.
- ORDER: contains order-level data such as order ID, customer reference, date, status, location, sales, profit, delivery details, and shipping info.
- ORDER DETAILS: holds detailed information for each item within an order, including product ID, discounts, quantity, price, and total amount.
- PRODUCT: lists product information such as product ID, category reference, name, description, image, price, and status.
- CATEGORY: defines product categories with a category ID, linked to a department, and includes the category name.
- DEPARTMENT: eepresents departments with an ID, name, and geographical coordinates (latitude and longitude).
![LogisticsPr_ERD drawio (1)](https://github.com/user-attachments/assets/8917365c-e673-4a33-aaf0-1b8e9423f56d)

## Executive Summary
### Overview of the findings
Over the years, the company faced challenges in its delivery logistics performance, showing notable issues with timely deliveries. The data reveals that out of 65.74K total orders, 28.96K were completed, resulting in a late delivery rate of 57.31% based on the total orders and an on-time delivery rate of only 18.72%. Overall, late deliveries remain a prominent issue. In later sections, we will explore contributing factors and highlight key opportunities for improvement. 
<br>

![Delivery performance](https://github.com/user-attachments/assets/2316e34f-e656-4c2d-8d89-1da2b8d1d036)




Further help
To get more help on the Angular CLI use ng help or go check out the Angular CLI Overview and Command Reference page.

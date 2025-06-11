## PROJECT BACKGROUND
Dataco is a leading logistics service provider with a comprehensive presence across all countries in Southeast Asia. Offering a wide range of logistics solutions—from transportation to warehousing—Ryo has established itself as a trusted partner for numerous e-commerce businesses. Alongside this rapid growth, ABC faces several critical challenges in managing its supply chain and optimizing operational efficiency. Dataco is committed to leveraging advanced data-driven approaches to tackle these problems.
- Late delivery risk: The company lacks clear insights into the root causes of frequent delivery delays, which negatively impact customer satisfaction and brand reputation.
- Delivery optimization: An analysis  of Dataco's delivery process (improving route planning, selecting appropriate shipping methods etc)  to reduce delivery times and costs while increasing on-time delivery rates.
- Regional logistics performance: Comparing delivery timeliness and shipping costs across various regions to identify high-performing areas and regions requiring operational improvements.

## DATA STRUCTURE
The raw dataset contains all information combined into a single comprehensive table. To provide a clearer understanding of the data structure and the relationships between different columns, an Entity-Relationship Diagram (ERD) is used.
- CUSTOMERS: stores detailed information about customers, including their ID, name, contact info, location, and segment.
- ORDER: contains order-level data such as order ID, customer reference, date, status, location, sales, profit, delivery details, and shipping info.
- ORDER DETAILS: holds detailed information for each item within an order, including product ID, discounts, quantity, price, and total amount.
- PRODUCT: lists product information such as product ID, category reference, name, description, image, price, and status.
- CATEGORY: defines product categories with a category ID, linked to a department, and includes the category name.
- DEPARTMENT: eepresents departments with an ID, name, and geographical coordinates (latitude and longitude).
![LogisticsPr_ERD drawio (1)](https://github.com/user-attachments/assets/8917365c-e673-4a33-aaf0-1b8e9423f56d)

## EXECUTIVE SUMMARY
### Overview of the findings
Over the years, the company faced challenges in its delivery logistics performance, showing notable issues with timely deliveries. The data reveals that out of 65.74K total orders, 28.96K were completed, resulting in a late delivery rate of 57.31% based on the total orders and an on-time delivery rate of only 18.72%. Overall, late deliveries remain a prominent issue. In later sections, we will explore contributing factors and highlight key opportunities for improvement. 
<br>

![Delivery performance](https://github.com/user-attachments/assets/2316e34f-e656-4c2d-8d89-1da2b8d1d036)
### Insights:
- Out of nearly 66K total orders, only about 29K have been successfully completed and delivered.
- The late delivery rate is significantly high at 57%, while the on-time delivery rate is alarmingly low at just 19%.
- A comparison of late and on-time deliveries across different dimensions such as shipping methods, product categories, regions, and customer segments shows that these factors do not appear to have a significant impact on the late delivery rate. This suggests that the delays are more of an internal issue within the company's logistics and are not tied to specific products or customer segments.
- Standard Class is the most commonly used shipping method and also has the lowest rate of late deliveries (38.07%). Additionally, it is the only shipping method that reports advance shipping.
- Both First Class and Second Class show relatively high rates of late deliveries (95.32% and 76.63%, respectively), indicating inefficiencies in these methods.
![latedelivery](https://github.com/user-attachments/assets/16dec752-9166-40aa-bca5-634b2a2afa49)

### Insights:
- Second Class has the greatest average delay of 2 days, while the other methods show a 1-day difference, suggesting that delays in Second Class are typically more severe.
- Upon further analysis of the top 5 regions with the highest order volumes, Standard Class remains the most popular, followed by First Class and Second Class, which share similar order numbers. 
- Despite this, the late delivery rates for First Class and Second Class are the highest in these regions, indicating that the company should prioritize improvements in these shipping methods.

### Recommendations: 
- Leverage Standard Class method: As the most commonly used method with the lowest late delivery rate, Standard Class should be further optimized, especially since it is the only method showing **"Advance shipping" status.**
- The company should focus on **improving First Class and Second Class** method by
  + Ensure that sufficient manpower and resources are allocated to First and Second Class orders, especially for faster, time-sensitive deliveries.
  + Strengthen collaboration with external shipping partners to reduce delays and improve efficiency.
- Enhance Regional Delivery Performance: Focus on **regions with high order volumes and late delivery rates**, like Southeast Asia. ABC should partner with local logistics providers or invest in regional warehouses to speed up deliveries and reduce delays.

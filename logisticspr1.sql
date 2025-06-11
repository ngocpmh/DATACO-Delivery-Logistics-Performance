select * from logisticspr

-- 1. The number of orders by shipping mode 
select distinct(Shipping_Mode), count(distinct(Order_Id)) as 'Number of orders'
from logisticspr
group by Shipping_Mode

-- 2. On time rate and late delivery rate by shipping mode
select
    Shipping_Mode,
    ROUND(SUM(CASE WHEN Late_delivery_risk = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(Order_Id), 1) AS 'On time delivery (%)',
    ROUND(SUM(CASE WHEN Late_delivery_risk = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(Order_Id), 1) AS 'Late delivery (%)'
from logisticspr
group by Shipping_Mode;

-- 3. The comparison of late and on time orders based on scheduled and real shipping day
select 
    Real_Day_For_Shipment, 
	Scheduled_Day_For_Shipment,
    COUNT(CASE WHEN Late_delivery_risk = 0 THEN 1 END) AS 'On Time Orders',
    COUNT(CASE WHEN Late_delivery_risk = 1 THEN 1 END) AS 'Late Orders'
from logisticspr
group by Real_Day_For_Shipment, Scheduled_Day_For_Shipment
order by Real_Day_For_Shipment, Scheduled_Day_For_Shipment


select * 
from logisticspr
where Shipping_Mode like 'First Class'

-- 4. Average late delivery day by shipping mode
select
    Shipping_Mode,
    AVG(DATEDIFF(day, Scheduled_Day_For_Shipment, Real_Day_For_Shipment)) AS 'Average day difference'
from logisticspr
where Late_delivery_risk = 1
group by Shipping_Mode;

-- 5. Number of late orders by shipping mode in each order_region
select
	Order_Region,
	Shipping_Mode,
	count(Order_Id)
from logisticspr
where Late_delivery_risk = 1
group by Order_Region, Shipping_Mode
order by Order_Region
-- Conclusion: Top 10 regions have the highest number of orders -> have the highest sales -> delivery risk high too

-- 6. Late delivery rate by shipping mode in each region 
select 
    Order_Region,
    Shipping_Mode,
    COUNT(Order_Id) AS 'Number of Late Orders',
    ROUND(COUNT(Order_Id) * 100.0 / 
          (SELECT COUNT(Order_Id) 
           FROM logisticspr 
           WHERE Shipping_Mode = l.Shipping_Mode 
           AND Order_Region = l.Order_Region), 2) AS 'Late Delivery Percentage'
from logisticspr l
where Late_delivery_risk = 1
group by Order_Region, Shipping_Mode
order by Order_Region, Shipping_Mode;
-- Conclusion: In general, all regions have the first class method as the highest delivery rate -> late delivery rate doesnt depend on the location or geography but by shipping method ??

--
select *
from logisticspr

select 
	Order_Region,
	Shipping_Mode,
	AVG(DAY(Real_Day_For_Shipment)) AS 'Average Delivery Day (Real Day)'
from logisticspr
group by Order_Region, Shipping_Mode

select 
	Shipping_Mode,
	AVG(DAY(Real_Day_For_Shipment)) AS 'Average Delivery Day (Real Day)',
	AVG(DAY(Scheduled_Day_For_Shipment)) AS 'Average Scheduled Delivery Day'
from logisticspr
group by Shipping_Mode
Create database Amazon_Sales_Analysis;

use Amazon_sales_analysis;

Select*from Sales_data;

Select Sum(total_revenue) As Revenue from sales_data;

Select Region, Sum(total_revenue) as Revenue
From Sales_data
group by region;

Select Item_type, sum(total_revenue) as Revenue
from sales_data
group by Item_type;

Select Sales_channel, sum(total_revenue) as Revenue
from sales_data
group by sales_channel;

select sum(total_profit) As Profit
from sales_data;

select sum(total_cost) As Cost
from sales_data;

select avg(total_revenue) as Avg_Order_value
from sales_data;

select Region, total_revenue as Revenue, total_profit As Profit
from sales_data
order by total_revenue desc
Limit 10;

Select Item_Type as Item, total_Profit as Profit
from sales_data
order by Total_profit desc;

Select count(order_ID) as Total_orders
from sales_data; 

select sales_channel, count(order_id) as Total_orders
from sales_data
group by sales_channel;

select Order_priority, count(order_id) as Total_orders
from sales_data
group by order_priority;

select order_priority, sum(total_revenue) as Revenue
from sales_data
group by Order_priority;

SELECT MAX(Total_revenue) AS 'Highest Rev',
	MIN(Total_revenue) AS 'Lowest Rev',
    AVG(total_revenue) AS 'AVG Rev'
FROM Sales_data;


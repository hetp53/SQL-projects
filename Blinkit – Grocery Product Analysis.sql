select * from gstore;

# 1.Import Data from table Grocery Sales using the provided CSV File.
select*from gstore;

#2.Write an SQL query to show all Item_Identifier
select distinct item_identifier from gstore;

#3.Write an SQL query to show count of total Item_Identifier.
select count(item_identifier) from gstore;

#4.Write an SQL query to show maximum Item Weight.
select max(item_weight) from gstore;

#5. Write an SQL query to show minimum Item Weight.
select min(item_weight) from gstore;

#6. Write an SQL query to show average Item_Weight.
select avg(item_weight) from gstore;

#7.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
select count(item_fat_content) from gstore 
where item_fat_content= 'low fat';

#8.Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
select count(item_fat_content) from gstore 
where item_fat_content= 'regular';

#9.Write an SQL query to show maximum Item_MRP
select max(item_mrp) from gstore;

#10.Write an SQL query to show minimum Item_MRP
select min(item_mrp) from gstore;

#11.Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.
select item_identifier, item_fat_content, item_type, item_mrp from gstore g 
where item_mrp>200;

#12 Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat
select max(item_mrp) from gstore
where item_fat_content= "low fat";

#13.Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat
select min(item_mrp) from gstore
where item_fat_content= "low fat";

#14.Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
select * from gstore
where item_mrp between 50 and 100;

#15.Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
select distinct item_fat_content from gstore;

#16.Write an SQL query to show ALL UNIQUE value of  Item_Type
select distinct item_type from gstore;

#17.Write an SQL query to show ALL DATA in descending ORDER by Item MRP
select * from gstore g 
order by item_mrp desc;

#18.Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
 select * from gstore 
 order by item_outlet_sales;

#19. Write an SQL query to show ALL DATA in ascending by Item_Type
select * from gstore 
 order by item_type;

#20.Write an SQL query to show DATA of item_type dairy & Meat
select * from gstore where item_type in('dairy', 'meat');

#21. Write an SQL query to show ALL UNIQUE value of Outlet_Size
select distinct outlet_size from gstore;

#22. Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct outlet_location_type from gstore;

#23.Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct outlet_type from gstore;

#24.Write an SQL query to show count of number of items by Item_Type  and order it in descending order
select item_type, count(item_identifier) item from gstore g 
group by g.Item_Type 
order by item desc;

#25.Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
select outlet_size, count(item_identifier) item from gstore g 
group by g.Outlet_Size 
order by item;

#26.Write an SQL query to show count of number of items by Outlet_Type  and ordered it in descending order.
select outlet_type, count(item_identifier) item from gstore g 
group by g.Outlet_type
order by item;

#27.Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order
select outlet_location_type, count(item_identifier) item from gstore g 
group by g.Outlet_location_type 
order by item;  

#28.Write an SQL query to show maximum MRP by Item_Type
select item_type, max(item_mrp) max_mrp from gstore
group by item_type;

#29.Write an SQL query to show minimum MRP by Item_Type
select item_type, min(item_mrp) min_mrp from gstore
group by item_type;

#30.Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
select outlet_establishment_year, min(item_mrp) min_mrp from gstore g 
group by g.Outlet_Establishment_Year 
order by min_mrp desc;

#31.Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
select outlet_establishment_year, max(item_mrp) max_mrp from gstore g 
group by g.Outlet_Establishment_Year 
order by max_mrp desc;

#32.Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select outlet_size, avg(item_mrp) avg_mrp from gstore g 
group by g.Outlet_size 
order by avg_mrp desc;
 
#33.Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select outlet_type, avg(item_mrp) avgmrp from gstore g 
group by g.Outlet_Type 
order by avgmrp;

#34.Write an SQL query to show maximum MRP by Outlet_Type
select outlet_type, max(item_mrp) maxmrp from gstore g 
group by g.Outlet_Type 
order by maxmrp;

#35.Write an SQL query to show maximum Item_Weight by Item_Type
SELECT Item_Type , max(Item_Weight)max_weight 
FROM GStore  
GROUP BY Item_Type  
ORDER BY max_weight desc;

#36.Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year
select outlet_establishment_year, max(item_weight) max_weight from gstore g 
group by outlet_establishment_year
order by max_weight;

#37.Write an SQL query to show minimum Item_Weight by Outlet_Type
select outlet_type, min(item_weight) min_weight from gstore g 
group by outlet_type
order by min_weight;

#38.Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select outlet_location_type, avg(item_weight) avg_weight from gstore g 
group by outlet_location_type
order by avg_weight desc;

#39.Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
select item_type, max(item_outlet_sales) maxsales from gstore
group by Item_Type 
order by maxsales;

#40.Write an SQL query to show minimum Item_Outlet_Sales by Item_Type
select item_type, min(item_outlet_sales) minsales from gstore
group by Item_Type 
order by minsales;

#41.Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
select outlet_establishment_year, min(item_outlet_sales) minsales from gstore
group by outlet_establishment_year
order by minsales; 

#42.Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
select outlet_establishment_year, max(item_outlet_sales) maxsales from gstore
group by outlet_establishment_year
order by maxsales desc; 

#Q43 Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
SELECT  Outlet_Size, avg(Item_Outlet_Sales)Average_sales  
FROM GStore  
GROUP BY Outlet_Size 
order by Average_sales desc;

#Q44 Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
SELECT  Outlet_Type, avg(Item_Outlet_Sales)Average_sales  
FROM GStore  
GROUP BY Outlet_Type 
order by Average_sales asc;

#Q45 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type 
SELECT  Outlet_Type, max(Item_Outlet_Sales)Max_sales  
FROM GStore  
GROUP BY Outlet_Type
order by Max_sales asc;

#Q46 Write an SQL query to show total Item_Outlet_Sales by Item_Type 
select Item_Type, sum(Item_Outlet_Sales) total_sales
from GStore 
group by Item_Type 
order by total_sales desc;

#Q47 Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content 
select Item_Fat_Content, sum(Item_Outlet_Sales)total_sales
from GStore 
group by Item_Fat_Content 
order by total_sales desc;

#Q48 Write an SQL query to show maximum Item_Visibility by Item_Type
select Item_Type, Max(Item_Visibility)max_visibility
from GStore 
group by Item_Type 
order by max_visibility desc; 

#Q49 Write an SQL query to show Minimum Item_Visibility by Item_Type 
select Item_Type, Min(Item_Visibility)min_visibility
from GStore 
group by Item_Type 
order by min_visibility desc; 

#50.Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1
select item_type, sum(item_outlet_sales) total_sum from gstore 
where outlet_location_type= 'tier 1'
group by gstore.Item_Type;

#51.Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
select item_type, sum(item_outlet_sales) total_sum from gstore g 
where item_fat_content in ('low fat', 'lf')
group by item_type
order by total_sum desc;
 
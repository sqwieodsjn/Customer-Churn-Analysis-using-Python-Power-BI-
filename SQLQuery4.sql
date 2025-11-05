select Gender, count(Gender) as Total_Number,
count(Gender)*100.0/(select count(*) from dbo.Customer_Data) as Percentage
from dbo.Customer_Data
group by Gender

select Contract, count(contract) as Total_Number,
count(contract)*100.0/(select count(*) from dbo.Customer_Data) as Percentage
from dbo.Customer_Data
group by Contract

select Customer_status,count(customer_status) as Totaal_Number,sum(total_revenue) as Total_Rev,
sum(total_revenue) /(select sum(total_revenue) from dbo.Customer_Data) *100.0 as Rev_Percentage
from dbo.Customer_Data
group by Customer_Status

select State,count(State) as Total_Number,
count(State)*100.0/(select count(*) from dbo.Customer_Data) as Percentage
from dbo.Customer_Data
group by state
order by Percentage desc

select distinct Internet_Type
from dbo.Customer_Data


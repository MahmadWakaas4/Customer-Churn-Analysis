create database shopping;

select*from exp_churn_data;

select count(*)Churned_Customers from exp_churn_data where churn_flag=1;

select count(*)Total_Customers from exp_churn_data;

select round(count(case when churn_flag=1 then 1 end)*100.0/count(*),2)Churn_Rate from exp_churn_data;

select top 5 customer_name,churn_score from exp_churn_data order by churn_score desc;

select cancellation_reason,
count(*)Total from exp_churn_data where cancellation_reason is not null group by cancellation_reason;

select customer_name,cancellation_date,cancellation_reason 
from exp_churn_data
where cancellation_date is not null;

select country,count(*)Total_Customers
from exp_churn_data
group by country
order by Total_Customers desc;

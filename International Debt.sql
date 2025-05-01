set search_path to International_Debt;
--1. What is the total amount of debt owed by all countries in the dataset?
select 
	(sum(debt)/1000000):: numeric(12,2) as Total_debt
	from international_debt_with_missing_values;

--2. How many distinct countries are recorded in the dataset?
select 
	count(distinct country_name) as unique_countries
	from international_debt_with_missing_values;

--3. What are the distinct types of debt indicators, and what do they represent?
select distinct indicator_name  
from international_debt_with_missing_values;

--4. Which country has the highest total debt, and how much does it owe?

select distinct country_name, sum(debt) as highest_debt
from international_debt_with_missing_values
group by country_name 
order by sum(debt) desc;

--5. What is the average debt across different debt indicators?
select distinct indicator_name,
avg(debt)
from international_debt_with_missing_values
group by indicator_name;

--6. Which country has made the highest amount of principal repayments?

select distinct country_name, sum(debt)
from international_debt_with_missing_values
where indicator_name like '%Principal repayment%'
group by country_name
having sum(debt)>=0
order by sum(debt) desc;

--7. What is the most common debt indicator across all countries?
select indicator_name
from international_debt_with_missing_values
group by indicator_name 
order by count(*) desc;

--Identify any other key debt trends and summarize your findings

select * from assignment.international_debt_with_missing_values;


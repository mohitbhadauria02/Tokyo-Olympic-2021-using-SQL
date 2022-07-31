-- find the country as well as the country code with total gold medals 
select Country,Gold_Medal,Country_Code from tokyo_olympic.project
where Gold_Medal >= 0
group by Country,Country_Code,Gold_Medal
order by max(Gold_Medal) desc;

-- find the Country who has won the most gold medals
select country , max(Gold_Medal) as highest_gold_medal from tokyo_olympic.project

-- find the top 5 countries with country code who has won the maximum silver medals
select country, country_code, silver_medal from tokyo_olympic.project
group by country
order by silver_medal desc
limit 5;

-- find the country who has won 21 silver medals with country code Gbr
select country, silver_medal from tokyo_olympic.project
where Silver_Medal = 21 and Country_Code = 'GBR';

-- find the total gold medals won by the country whose country code starting with 'N'
Select Country, country_code, Gold_medal from tokyo_olympic.project
where Country_Code like 'N%';

-- find the total medals won by Germany and Denmark
select country, total from tokyo_olympic.project
where country in ('germany', 'denmark'); 

-- find the countries who has won atleast 1 or more than gold medals
SELECT * FROM tokyo_olympic.project
WHERE gold_medal >=1
GROUP BY Country
ORDER BY gold_medal;

-- find the number of distinct country_code 
select count(distinct country_code) from tokyo_olympic.project;

-- find the country who has won the total medals between 50-100
select * from tokyo_olympic.project
where total between 50 and 100;

-- find the country who didn't won any gold medal
select country,Gold_Medal from tokyo_olympic.project
where gold_medal <=0;

commit;
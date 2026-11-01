#Calculated columns
use moviesdb;
select * from actors;
select year(curdate());
select *, year(curdate())-birth_year as age from actors;

select *, revenue-budget as profit from financials;
# now our purpose is to convert everything into usd assuming usd to inr ratio is 90
select *,
if (currency="INR",revenue/90, revenue) as revenue_usd
from financials;

#Unit conversion using case-end
select * ,
case
when unit="thousands"then revenue/1000
when unit="billions" then revenue*1000
when unit="millions" then revenue
end as revenue_in_million
from financials;

#CASE
#   WHEN condition1 THEN result1
#   WHEN condition2 THEN result2
#  ...
#   [ELSE resultN]
#END

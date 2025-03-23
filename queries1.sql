-- Basic Sql queries:
select * from sales;
select SaleDate,Amount,Customers from sales;
select Amount,GeoID,Customers from sales;
-- Calculations on queries:
-- sales
select SaleDate,Amount,Boxes,Amount/Boxes from sales;
-- how to add name to column?
select SaleDate,Amount,Boxes
-- select SaleDate,Amount,Boxes,Amount/Boxes as "Amount per box" from sales;
-- how to impose a condition?(where clause-filters the data,order by clause -sortes the data)
select * from sales where amount>10000;
select * from sales where amount>10000 order by amount;
select * from sales where amount>10000 order by amount desc;
-- WHERE CLUASE
select * from sales where geoid='g1' order by pid,amount desc;
select * from sales where amount>10000 and SaleDate>='2022-01-01';-- (DATE FORMAT IN SQL:YY--MM--DD)
select SaleDate,Amount from sales where amount>10000 and year(SaleDate)=2022 order by amount desc;
select * from sales where boxes>0 and boxes<=50;
-- BETWEEN CLAUSE
select * from sales where boxes between 0 and 50 order by boxes desc;
-- WEEKDAY FUNCTION
select * from sales where weekday(SaleDate)=4;
select SaleDate,Amount,Boxes,weekday(SaleDate) as 'Day of week' from sales where weekday(SaleDate)=4;
-- MULTIPLE TABLE QUERIES
select * from people;
select * from people where Team='Delish' or Team='Jucies';
-- IN CLAUSE
select * from people where team in ('Delish','Jucies');
-- LIKE OPERATOR
select * from people where Salesperson like 'B%';-- (names starting with letter b)
select * from people where Salesperson like '%B%';-- (names containing letter b in it)
-- CASE OPERATOR
select * from sales;
select SaleDate,Amount,
		case 	when amount<1000 then 'under 1k'
				when amount<5000 then 'under 5k'
				when amount<10000 then 'under 10k'
			else '10k or more'
		end as 'Amount category'
from sales;


city
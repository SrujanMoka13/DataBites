select * from sales;
select * from people;
select * from products;
select * from geo;
select spid,amount from sales order by amount desc;
select Salesperson,SaleDate from people p,sales s where s.SPID=p.SPID;
-- JOIN OPERATIONS
select s.SaleDate,s.Amount,s.Customers,s.Boxes,p.Salesperson,s.spid,p.SPID
from sales s
join people p on s.SPID=p.SPID;

select Saledate,Amount,Customers,Boxes,p.Product,s.PID,p.pid
from sales s
join products p on s.PID=p.PID;

select s.SaleDate,s.Amount,s.Customers,s.Boxes,p.Salesperson,pr.Product
from sales s
join people p on s.SPID=p.SPID
join products pr on s.PID=pr.PID;

select s.SaleDate,s.Amount,s.Customers,s.Boxes,p.Salesperson,pr.Product,p.team
from sales s
join people p on s.SPID=p.SPID
join products pr on s.PID=pr.PID
where s.amount<500
and p.Team='Delish';

select s.SaleDate,s.Amount,s.Customers,s.Boxes,p.Salesperson,pr.Product,p.team,g.Geo
from sales s
join people p on s.SPID=p.SPID
join products pr on s.PID=pr.PID
join geo g on s.GeoID=g.GeoID
where s.amount<500
and p.Team =''
and g.geo in ('new zealand','india')
order by Saledate;
-- GROUP BY
select geoid,sum(amount),avg(amount),count(customers),sum(boxes)
from sales
group by GeoID;

select g.Geo,sum(amount),avg(amount),count(customers),sum(boxes)
from sales s
join geo g on s.GeoID=g.Geoid
group by g.geo;

select pr.category,p.team,sum(amount),avg(amount),sum(Customers),sum(boxes)
from sales s
join people p on s.spid=p.spid
join products pr on pr.pid=s.pid
where p.Team !=''
group by pr.category,p.team
order by pr.category,p.team;
-- TOTAL AMOUNT OF TOP 10 PRODUCTS
select pr.Product,sum(s.amount) as 'Total Amount'
from sales s
join products pr on pr.pid=s.pid
group by pr.Product
order by sum(s.amount) desc;
-- LIMIT OPERATION
select pr.Product,sum(s.amount)'Total Amount'
from sales s
join products pr on s.pid=pr.pid
group by pr.Product
order by sum(s.amount) desc
limit 10;

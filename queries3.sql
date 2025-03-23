select * from sales where amount>2000 and boxes<100;
select SaleDate,Customers,Boxes from sales where month(SaleDate)=1 and year(SaleDate)=2022 order by SaleDate;
select SaleDate,Customers,Boxes,Amount,p.Salesperson
from sales s
join people p on s.spid=p.spid
where SaleDate between '2022-01-01' and '2022-01-31'
order by s.SaleDate;
	
select pr.Product,sum(s.Boxes)
from sales s
join products pr on s.pid=pr.pid
where pr.product in ('Milk Bars','Eclairs')
group by pr.Product;

select pr.Product,sum(Boxes)
from sales s
join products pr on s.pid=pr.pid
where s.SaleDate between '2022-02-01' and '2022-02-7'
group by pr.Product
order by sum(Boxes) desc;

select p.Salesperson,p.Team,pr.Product,g.Geo,SaleDate,Customers,Boxes,weekday(SaleDate)'Weekday'
from sales s
join people p on s.spid=p.spid
join products pr on s.pid=pr.pid
join geo g on g.GeoID=s.GeoID
where Customers<=100 and Boxes<=100 and weekday(SaleDate)=4;
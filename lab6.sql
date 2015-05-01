
 -- Number 1 (Lab 6)
 select c.*
 from customers c,
	(select city, count(name) as cityCount
	 from products
	 group by city
	 order by cityCount DESC
	 limit 2) tt
where tt.city = c.city

-- Number 2 (Lab 6) 
select name
from products
where priceUSD < (select avg(priceUSD) 
		  from products)
order by name ASC

-- Number 3 
select name, pid, dollars 
from customers
INNER JOIN orders
ON customers.cid = orders.cid
ORDER BY dollars DESC

-- Number 4

-- Number 5


-- Number 6 (Lab 6)
select *
select o.ordno, o.qty, o.dollars, 
       p.priceUSD,
       c.discount as discountPCT,
       (o.qty * p.priceUSD)-((o.qty * p.priceUSD)  * (c.discount/100)) as "extPriceUSD"
from orders o,
     products p,
     customers c
 where o.pid = p.pid
   and o.cid = c.cid 
   and dollars != "extPriceUSD"

-- Number 7

-- A left outter join between two entities takes all the values from the first table
-- as well as all the common values it shares with the joint table. If that value
-- doesnt exist in the second table, nulls will be added.

select *
from customers
LEFT JOIN orders
on customers.cid = orders.cid;

-- A right outter join takes all of the values in the second table as well as the same
-- values in the first table. if a value doesnt exist in the joint table nulls will be
-- added
select *
from customers
RIGHT JOIN orders
on customers.cid = orders.cid;
  
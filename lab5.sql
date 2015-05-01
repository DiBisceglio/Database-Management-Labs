-- Scott DIBIsceglio
-- Lab 5

-- Number 1
show the cities of  agents booking an order whos pid is c006

select city 
FROM agents
INNER JOIN orders
on agents.aid = orders.aid
WHERE cid = 'c006'

-- Number 2 
show pids of products ordered through any agent who makes at least
one order for a customer in Kyoto, sorted pid high to low

select pid, city, aid
from orders JOIN customers ON
	city = 'Kyoto'
order by pid DESC;

-- Number 3
show the names of customers who have never placed an order

select name
from customers
where cid NOT IN (
		   select cid
		   from orders);

-- number 4
show the names of customers who have never placed an order join

select name
from customers c LEFT JOIN
Orders o ON c.cid = o.cid
where o.cid is null;

-- Numnber 5
Show names of customers who placed at least 1 order through an 
agent int their own city 

select c.name, a.name
from customers c, agents a
where c.city = a.city;

-- Number 6
select c.name, a.name, a.city
from customers c, agents a
where c.city = a.city;

 -- Completed number 7 (lab 5)
 select name, city
 from customers
 where city = 
 (select city
 from
 (select city, count(name) as cityCount
  from products
  group by city
  order by cityCount ASC
  limit 1)sub1)

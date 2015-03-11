-- Scott DIbIsceglio
-- LAB #4

--Number 1
select city
from agents
where aid in (select aid
	      from orders
	      where orders.cid='c006')
	      
--Number 2 NOT WORKING
select pid
from products
where products.city in (select city
	                from customers
	                where customers.city='Kyoto'
	                and customers.city = products.city)	
               
--Number 3
select cid, name
from customers
where cid in (select cid
	      from orders
	      where orders.aid  != 'a03')

--Number 4 NOT WORKING
select cid
from customers
where cid in (select cid
	      from orders
	      where orders.pid='p01' 
	      or orders.pid='p07')

--Number 5
select pid
from products
where pid in (select pid 
              from orders
	      where orders.aid != 'a05')

--Number 6
select name, city, discount
from customers
where city in (select city
	       from agents
	       where agents.city='Dallas' 
	       OR agents.city='New York')

--Number 7
select *
from customers
where discount in (select discount
	           from customers
	           where customers.city='Dallas' 
	           OR customers.city='London')



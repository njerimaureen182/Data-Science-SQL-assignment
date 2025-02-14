create table orders(
	order_id int,
    customer_id int,
    order_date date,
    total_amount decimal
);

insert into orders(order_id, customer_id, order_date, total_amount)
values(1, 101, '2023-01-05',200.00),
	  (2, 102, '2023-01-07',150.00),
      (3, 101, '2023-01-10',300.00),
      (4, 103, '2023-01-15',450.00),
      (5, 102, '2023-01-20',100.00),
      (6, 101, '2023-01-25',250.00);
      
select * from orders;

-- Write a SQL query to find the total amount spent by each customer who has placed more than 
-- one order. The result should include the customer ID, the total amount spent, and the total 
-- number of orders. Sort the results by total amount spent in descending order.

select customer_id, sum(total_amount) as total_spent, count(order_id) as number_of_orders 
from orders
group by customer_id
having count(order_id) > 1
order by total_spent desc;




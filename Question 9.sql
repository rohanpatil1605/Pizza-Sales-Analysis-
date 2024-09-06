-- Group the orders by date and calculate the average number of pizzas ordered per day.
select round(avg(quantity),0) as avg_number_of_pizzas_per_day from
(SELECT 
    orders.order_date, SUM(order_details.quantity) as quantity
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id
GROUP BY orders.order_date) as order_qunatity_ordered;	
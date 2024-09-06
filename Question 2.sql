-- Calculate the total revenue generated from pizza sales.
SELECT 
    Round(SUM(order_details.quantity * pizzas.price),0) as Total_revenue
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id;
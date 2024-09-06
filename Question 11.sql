-- Calculate the percentage contribution of each pizza type to total reven
select pizza_types.category , concat(round(sum(order_details.quantity * pizzas.price)/(SELECT 
    round(SUM(order_details.quantity * pizzas.price),0)
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id) *100,2),"%") as rev
    from pizza_types join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
    join order_details on order_details.pizza_id = pizzas.pizza_id
    group by pizza_types.category order by rev desc;
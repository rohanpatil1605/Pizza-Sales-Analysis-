-- Determine the top 3 most ordered pizza types based on revenue.
select pizza_types.name, round(sum(order_details.quantity * pizzas.price),0) as rev
from pizza_types join pizzas on pizzas.pizza_type_id = pizza_types.pizza_type_id
join order_details on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name 
order by rev desc limit 3;
SELECT * FROM orders 
    WHERE suborders_count <> (SELECT COUNT(suborders.order_id) 
                                FROM orders INNER JOIN suborders 
                                ON orders.id = suborders.order_id);
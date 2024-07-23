CREATE OR REPLACE VIEW `users_orders` AS
SELECT
    u.id user_id,
    o.id order_id,
    SUM(o2g.count * g.price) total_price
FROM `user` u
JOIN `order` o ON
    o.user_id = u.id
JOIN `order2good` o2g ON
    o2g.order_id = o.id
JOIN `good` g ON
    g.id = o2g.good_id
JOIN `order_status_change` osc ON
    osc.order_id = o.id
WHERE
    osc.src_status_id = 6 AND
    osc.dst_status_id = 7
GROUP BY u.id, o.id;

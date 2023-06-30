-- 2023-06-30 2.week3

-- ユーザの集計
SELECT 
    user_id,
    COUNT(id) AS order_count,
    SUM(total_price) AS total_price
FROM user_items
GROUP BY user_id;

-- 商品の集計
SELECT 
    item_id,
    COUNT(id) AS order_count,
    SUM(amount) AS total_amount,
    SUM(total_price) AS total_price
FROM user_items
GROUP BY item_id;

-- ユーザの集計
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(user_items.id) AS order_count,
    SUM(user_items.total_price) AS total_price
FROM user_items
JOIN users ON user_items.user_id = users.id
GROUP BY user_id;

-- 商品の集計
SELECT 
    items.id AS item_id,
    items.name AS item_name,
    COUNT(user_items.id) AS order_count,
    SUM(user_items.amount) AS total_amount,
    SUM(user_items.total_price) AS total_price
FROM user_items
JOIN items ON user_items.item_id = items.id
GROUP BY item_id;

-- ユーザの集計 (user_id = 1)
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(user_items.id) AS order_count,
    SUM(user_items.total_price) AS total_price
FROM user_items
JOIN users ON user_items.user_id = users.id
WHERE user_items.user_id = 1
GROUP BY user_id;

-- -- ユーザの集計 (user_id = 1, 2023年6月) 無し
-- SELECT 
--     users.id AS user_id,
--     users.name AS user_name,
--     COUNT(user_items.id) AS order_count,
--     SUM(user_items.total_price) AS total_price
-- FROM user_items
-- JOIN users ON user_items.user_id = users.id
-- WHERE user_items.user_id = 1
-- AND user_items.created_at >= "2023-06-01"
-- AND user_items.created_at < "2023-07-01"
-- GROUP BY user_id;

-- 総合計金額が 1000以上の集計
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(user_items.id) AS order_count,
    SUM(user_items.total_price) AS total_price
FROM user_items
JOIN users ON user_items.user_id = users.id
GROUP BY user_id
HAVING SUM(user_items.total_price) >= 1000;
-- ※ ↑ WHEREでは書けない

-- 商品の総売上の金額が 1000以上の集計
SELECT 
    items.id AS item_id,
    items.name AS item_name,
    COUNT(user_items.id) AS order_count,
    SUM(user_items.amount) AS total_amount,
    SUM(user_items.total_price) AS total_price
FROM user_items
JOIN items ON user_items.item_id = items.id
GROUP BY item_id
HAVING SUM(user_items.total_price) >= 1000
ORDER BY user_items.id
LIMIT 100;



-- gender = female の購入履歴
-- Subqueryの場合
-- WHEREのサブクエリ
SELECT * FROM user_items
WHERE user_items.user_id IN (SELECT id FROM users WHERE gender = "female");

SELECT 
    users.name,
    users.gender,
    user_items.amount,
    user_items.total_price,
    user_items.created_at
FROM user_items
JOIN users ON user_items.user_id = users.id
WHERE user_items.user_id IN (SELECT id FROM users WHERE gender = "female");

-- JOINの場合
SELECT * FROM user_items
JOIN users ON user_items.user_id = user_id
WHERE users.gender = "female"; 

-- 平均価格より高い商品
SELECT * FROM items WHERE price >= (SELECT AVG(price) FROM items);
-------------------------------------------------------------------------------
-- FROMのサブクエリ
SELECT
    male_users.name,
    male_users.gender,
    user_items.*
FROM (SELECT * FROM users WHERE gender = "male") AS male_users
JOIN user_items ON male_users.id = user_items.user_id;

-- JOINの場合
SELECT
    users.name,
    users.gender,
    user_items.*
FROM users
JOIN user_items ON users.id = user_items.user_id
WHERE users.gender = "male";



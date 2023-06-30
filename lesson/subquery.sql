-- gender = female の購入履歴
SELECT * FROM user_items
WHERE user_items.user_id IN (SELECT id FROM users WHERE gender = "female");

-- JOINの場合
SELECT * FROM user_items
JOIN users ON user_items.user_id = user_id
WHERE users.gender = "female"; 